#define DMALLOC_DISABLE 1
#include "dmalloc.hh"
#include <cassert>
#include <cstring>
#include <unordered_set>
#include <cstdio>
#include <cstdlib>

// Global variables to track memory allocation statistics.
static unsigned long long nactive2 = 0; // Number of currently active allocations.
static unsigned long long active_size2 = 0; // Total size of currently active allocations.
static unsigned long long ntotal2 = 0; // Total number of allocations made.
static unsigned long long total_size2 = 0; // Total size of all allocations made.
static unsigned long long nfail2 = 0; // Number of failed allocation attempts.
static unsigned long long fail_size2 = 0; // Total size of failed allocation attempts.
static uintptr_t heap_min2 = UINTPTR_MAX; // Minimum address of the heap.
static uintptr_t heap_max2 = 0; // Maximum address of the heap.

std::unordered_set<void*> freed_pointers; // Set to track freed pointers.
static std::unordered_set<void*> allocated_pointers;  // Set to track allocated pointers.

// I am a header struct to store a size variable for the size of the memory block.
typedef struct {
    size_t size;
} Header;

/**
 * dmalloc(sz,file,line)
 *      malloc() wrapper. Dynamically allocate the requested amount `sz` of memory and 
 *      return a pointer to it 
 * 
 * @arg size_t sz : the amount of memory requested 
 * @arg const char *file : a string containing the filename from which dmalloc was called 
 * @arg long line : the line number from which dmalloc was called 
 * 
 * @return a pointer to the heap where the memory was reserved
 */
void* dmalloc(size_t sz, const char* file, long line) {
    (void) file, (void) line;   // avoid uninitialized variable warnings.
    // Check for overflow in size calculation.
    if (sz > SIZE_MAX - sizeof(Header)) {
        nfail2++;
        fail_size2 += sz;
        return NULL;
    }
    Header* header = (Header*)base_malloc(sz + sizeof(Header));
    if (header) {
        header->size = sz;
        void* ptr = (void*)(header + 1);
        nactive2++;
        active_size2 += sz;
        ntotal2++;
        total_size2 += sz;
        uintptr_t addr = (uintptr_t)header;
        if (addr < heap_min2) heap_min2 = addr;
        if (addr + sz + sizeof(Header) > heap_max2) heap_max2 = addr + sz + sizeof(Header);
        allocated_pointers.insert(ptr);  // Track the allocated pointer.
        return ptr;
    } else {
        nfail2++;
        fail_size2 += sz;
        return NULL;
    }
}

/**
 * dfree(ptr, file, line)
 *      free() wrapper. Release the block of heap memory pointed to by `ptr`. This should 
 *      be a pointer that was previously allocated on the heap. If `ptr` is a nullptr do nothing. 
 * 
 * @arg void *ptr : a pointer to the heap 
 * @arg const char *file : a string containing the filename from which dfree was called 
 * @arg long line : the line number from which dfree was called 
 */
void dfree(void* ptr, const char* file, long line) {
    Header* header = (Header*)ptr - 1;
    uintptr_t addr = (uintptr_t)ptr;
    (void) file, (void) line;   // avoid uninitialized variable warnings.
    if (ptr) {
        if (allocated_pointers.find(ptr) == allocated_pointers.end()) {
            bool found_inside = false;
            for (const auto& allocated_ptr : allocated_pointers) {
                Header* allocated_header = (Header*)allocated_ptr - 1;
                uintptr_t allocated_addr = (uintptr_t)allocated_ptr;
                size_t allocated_size = allocated_header->size;

                if (addr > allocated_addr && addr < allocated_addr + allocated_size) {
                    found_inside = true;
                    fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not allocated\n", file, line, ptr);
                    fprintf(stderr, " %s:%ld: ??? is %zu bytes inside a %zu byte region allocated here\n",
                            file, line, ptr, addr - allocated_addr, allocated_size);
                    break;
                }
            }

            if (!found_inside) {
                if ((void*)(header + 1) != ptr) {
                    // Pointer is not at the beginning of the allocated block.
                    fprintf(stderr, "MEMORY BUG???: invalid free of pointer %p, not allocated\n", ptr);
                } else if (freed_pointers.find(ptr) != freed_pointers.end()) {
                    // Pointer was previously freed (double free).
                    fprintf(stderr, "MEMORY BUG???: invalid free of pointer %p, double free\n", ptr);
                } else {
                    // Pointer was never allocated (not in heap).
                    fprintf(stderr, "MEMORY BUG???: invalid free of pointer %p, not in heap\n", ptr);
                }
            }
            abort();
        } else {
            // Pointer found, safe to free.
            allocated_pointers.erase(ptr);  // Remove the pointer from the allocated set.
            freed_pointers.insert(ptr);     // Add the pointer to the freed set.
            size_t sz = header->size;
            nactive2--;
            active_size2 -= sz;
            base_free(header);
        }
    }
}

/**
 * dcalloc(nmemb, sz, file, line)
 *      calloc() wrapper. Dynamically allocate enough memory to store an array of `nmemb` 
 *      number of elements with wach element being `sz` bytes. The memory should be initialized 
 *      to zero  
 * 
 * @arg size_t nmemb : the number of items that space is requested for
 * @arg size_t sz : the size in bytes of the items that space is requested for
 * @arg const char *file : a string containing the filename from which dcalloc was called 
 * @arg long line : the line number from which dcalloc was called 
 * 
 * @return a pointer to the heap where the memory was reserved
 */
void* dcalloc(size_t nmemb, size_t sz, const char* file, long line) {
    // Check for overflow in size calculation.
    if (nmemb != 0 && sz > SIZE_MAX / nmemb) {
        nfail2++;
        fail_size2 += nmemb * sz;
        return NULL;
    }
    void* ptr = dmalloc(nmemb * sz, file, line);
    if (ptr) {
        memset(ptr, 0, nmemb * sz);
    }
    return ptr;
}

/**
 * get_statistics(stats)
 *      fill a dmalloc_stats pointer with the current memory statistics  
 * 
 * @arg dmalloc_stats *stats : a pointer to the the dmalloc_stats struct we want to fill
 */
void get_statistics(dmalloc_stats* stats) {
    stats->nactive = nactive2;
    stats->active_size = active_size2;
    stats->ntotal = ntotal2;
    stats->total_size = total_size2;
    stats->nfail = nfail2;
    stats->fail_size = fail_size2;
    stats->heap_min = heap_min2;
    stats->heap_max = heap_max2;
}

/**
 * print_statistics()
 *      print the current memory statistics to stdout       
 */
void print_statistics() {
    dmalloc_stats stats;
    get_statistics(&stats);

    printf("alloc count: active %10llu   total %10llu   fail %10llu\n",
           stats.nactive, stats.ntotal, stats.nfail);
    printf("alloc size:  active %10llu   total %10llu   fail %10llu\n",
           stats.active_size, stats.total_size, stats.fail_size);
}

/**  
 * print_leak_report()
 *      Print a report of all currently-active allocated blocks of dynamic
 *      memory.
 */
void print_leak_report() {
    for (const auto& ptr : allocated_pointers) {
        Header* header = (Header*)ptr - 1;
        printf("LEAK CHECK: allocated object %p with size %zu\n", ptr, header->size);
    }
}

/// drealloc(ptr, sz, file, line)
///    Reallocate the dynamic memory pointed to by `ptr` to hold at least
///    `sz` bytes, returning a pointer to the new block. If `ptr` is
///    `nullptr`, behaves like `dmalloc(sz, file, line)`. If `sz` is 0,
///    behaves like `dfree(ptr, file, line)`. The allocation request
///    was at location `file`:`line`.
void* drealloc(void* ptr, size_t sz, const char* file, long line) {
    if (ptr == nullptr) {
        // If ptr is nullptr, behave like dmalloc.
        return dmalloc(sz, file, line);
    }

    if (sz == 0) {
        // If sz is 0, behave like dfree.
        dfree(ptr, file, line);
        return nullptr;
    }

    // Find the original size of the allocated block.
    Header* old_header = (Header*)ptr - 1;
    size_t old_size = old_header->size;

    // Allocate new block of memory.
    void* new_ptr = dmalloc(sz, file, line);
    if (new_ptr == nullptr) {
        // Allocation failed.
        return nullptr;
    }

    // Copy data from old block to new block.
    size_t copy_size = (old_size < sz) ? old_size : sz;
    memcpy(new_ptr, ptr, copy_size);

    // Free the old block.
    dfree(ptr, file, line);

    return new_ptr;
}