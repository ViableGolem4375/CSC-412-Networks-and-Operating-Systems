
obj/p-forkexit.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <sys_exit()>:
    return make_syscall(SYSCALL_FORK);
}

// sys_exit()
//    Exit this process. Does not return.
[[noreturn]] inline void sys_exit() {
  100000:	f3 0f 1e fa          	endbr64 
    register uintptr_t rax asm("rax") = syscallno;
  100004:	b8 06 00 00 00       	mov    $0x6,%eax
    asm volatile ("syscall"
  100009:	0f 05                	syscall 
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 03 00 00 00       	mov    $0x3,%eax
    asm volatile ("syscall"
  100010:	bf d0 0d 10 00       	mov    $0x100dd0,%edi
  100015:	0f 05                	syscall 
    make_syscall(SYSCALL_EXIT);
    make_syscall(SYSCALL_PANIC, (uintptr_t) "sys_exit should not return!");

    // should never get here
    while (true) {
  100017:	eb fe                	jmp    100017 <sys_exit()+0x17>

0000000000100019 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  100019:	f3 0f 1e fa          	endbr64 
  10001d:	55                   	push   %rbp
  10001e:	48 89 e5             	mov    %rsp,%rbp
  100021:	41 56                	push   %r14
  100023:	41 55                	push   %r13
  100025:	41 54                	push   %r12
  100027:	53                   	push   %rbx
  100028:	eb 12                	jmp    10003c <process_main()+0x23>
        if (x == 0) {
            // fork, then either exit or start allocating
            pid_t p = sys_fork();
            int choice = rand(0, 2);
            if (choice == 0 && p > 0) {
                sys_exit();
  10002a:	e8 d1 ff ff ff       	call   100000 <sys_exit()>
            } else if (choice != 2 ? p > 0 : p == 0) {
  10002f:	85 db                	test   %ebx,%ebx
  100031:	75 09                	jne    10003c <process_main()+0x23>
  100033:	eb 44                	jmp    100079 <process_main()+0x60>
    register uintptr_t rax asm("rax") = syscallno;
  100035:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  10003a:	0f 05                	syscall 
        int x = rand(0, ALLOC_SLOWDOWN);
  10003c:	be 12 00 00 00       	mov    $0x12,%esi
  100041:	bf 00 00 00 00       	mov    $0x0,%edi
  100046:	e8 d9 02 00 00       	call   100324 <rand(int, int)>
        if (x == 0) {
  10004b:	85 c0                	test   %eax,%eax
  10004d:	75 e6                	jne    100035 <process_main()+0x1c>
    register uintptr_t rax asm("rax") = syscallno;
  10004f:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  100054:	0f 05                	syscall 
    return rax;
  100056:	48 89 c3             	mov    %rax,%rbx
            int choice = rand(0, 2);
  100059:	be 02 00 00 00       	mov    $0x2,%esi
  10005e:	bf 00 00 00 00       	mov    $0x0,%edi
  100063:	e8 bc 02 00 00       	call   100324 <rand(int, int)>
            if (choice == 0 && p > 0) {
  100068:	85 c0                	test   %eax,%eax
  10006a:	75 04                	jne    100070 <process_main()+0x57>
  10006c:	85 db                	test   %ebx,%ebx
  10006e:	7f ba                	jg     10002a <process_main()+0x11>
            } else if (choice != 2 ? p > 0 : p == 0) {
  100070:	83 f8 02             	cmp    $0x2,%eax
  100073:	74 ba                	je     10002f <process_main()+0x16>
  100075:	85 db                	test   %ebx,%ebx
  100077:	7e c3                	jle    10003c <process_main()+0x23>
        } else {
            sys_yield();
        }
    }

    int speed = rand(1, 16);
  100079:	be 10 00 00 00       	mov    $0x10,%esi
  10007e:	bf 01 00 00 00       	mov    $0x1,%edi
  100083:	e8 9c 02 00 00       	call   100324 <rand(int, int)>
  100088:	41 89 c4             	mov    %eax,%r12d
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  10008b:	41 bd 1b 30 10 00    	mov    $0x10301b,%r13d

    uint8_t* data_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  100091:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    heap_top = data_top;
  100098:	4c 89 2d 69 1f 00 00 	mov    %r13,0x1f69(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  10009f:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000a2:	48 83 e8 01          	sub    $0x1,%rax
  1000a6:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000ac:	48 89 05 4d 1f 00 00 	mov    %rax,0x1f4d(%rip)        # 102000 <stack_bottom>
    unsigned nalloc = 0;

    // Allocate heap pages until out of address space,
    // forking along the way.
    while (heap_top != stack_bottom) {
  1000b3:	4c 39 e8             	cmp    %r13,%rax
  1000b6:	0f 84 18 01 00 00    	je     1001d4 <process_main()+0x1bb>
    unsigned nalloc = 0;
  1000bc:	bb 00 00 00 00       	mov    $0x0,%ebx
            }
        } else if (x < 3) {
            sys_exit();
        } else if (sys_page_alloc(heap_top) >= 0) {
            *heap_top = speed;
            console[CPOS(24, 79)] = speed;
  1000c1:	41 be 00 80 0b 00    	mov    $0xb8000,%r14d
  1000c7:	e9 8a 00 00 00       	jmp    100156 <process_main()+0x13d>
        int x = rand(0, 7 + min(nalloc / 4, 10U));
  1000cc:	89 de                	mov    %ebx,%esi
  1000ce:	c1 ee 02             	shr    $0x2,%esi
  1000d1:	b8 0a 00 00 00       	mov    $0xa,%eax
  1000d6:	39 c6                	cmp    %eax,%esi
  1000d8:	0f 47 f0             	cmova  %eax,%esi
  1000db:	83 c6 07             	add    $0x7,%esi
  1000de:	bf 00 00 00 00       	mov    $0x0,%edi
  1000e3:	e8 3c 02 00 00       	call   100324 <rand(int, int)>
        if (x < 2) {
  1000e8:	83 f8 01             	cmp    $0x1,%eax
  1000eb:	0f 8e 8f 00 00 00    	jle    100180 <process_main()+0x167>
        } else if (x < 3) {
  1000f1:	83 f8 02             	cmp    $0x2,%eax
  1000f4:	0f 8e a5 00 00 00    	jle    10019f <process_main()+0x186>
    register uintptr_t rax asm("rax") = syscallno;
  1000fa:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
  1000ff:	48 8b 3d 02 1f 00 00 	mov    0x1f02(%rip),%rdi        # 102008 <heap_top>
  100106:	0f 05                	syscall 
        } else if (sys_page_alloc(heap_top) >= 0) {
  100108:	85 c0                	test   %eax,%eax
  10010a:	0f 88 b2 00 00 00    	js     1001c2 <process_main()+0x1a9>
            *heap_top = speed;
  100110:	48 8b 05 f1 1e 00 00 	mov    0x1ef1(%rip),%rax        # 102008 <heap_top>
  100117:	44 88 20             	mov    %r12b,(%rax)
            console[CPOS(24, 79)] = speed;
  10011a:	66 45 89 a6 9e 0f 00 	mov    %r12w,0xf9e(%r14)
  100121:	00 
            heap_top += PAGESIZE;
  100122:	48 81 05 db 1e 00 00 	addq   $0x1000,0x1edb(%rip)        # 102008 <heap_top>
  100129:	00 10 00 00 
            if (console[CPOS(24, 0)]) {
  10012d:	66 41 83 be 00 0f 00 	cmpw   $0x0,0xf00(%r14)
  100134:	00 00 
  100136:	75 6c                	jne    1001a4 <process_main()+0x18b>
                // clear "Out of physical memory" msg
                console_printf(CPOS(24, 0), 0, "\n");
            }
            nalloc = (heap_top - data_top) / PAGESIZE;
  100138:	48 8b 1d c9 1e 00 00 	mov    0x1ec9(%rip),%rbx        # 102008 <heap_top>
  10013f:	4c 29 eb             	sub    %r13,%rbx
  100142:	48 c1 eb 0c          	shr    $0xc,%rbx
    while (heap_top != stack_bottom) {
  100146:	48 8b 05 b3 1e 00 00 	mov    0x1eb3(%rip),%rax        # 102000 <stack_bottom>
  10014d:	48 39 05 b4 1e 00 00 	cmp    %rax,0x1eb4(%rip)        # 102008 <heap_top>
  100154:	74 7e                	je     1001d4 <process_main()+0x1bb>
        if (rand(0, 6 * ALLOC_SLOWDOWN) >= 8 * speed) {
  100156:	be 6c 00 00 00       	mov    $0x6c,%esi
  10015b:	bf 00 00 00 00       	mov    $0x0,%edi
  100160:	e8 bf 01 00 00       	call   100324 <rand(int, int)>
  100165:	89 c2                	mov    %eax,%edx
  100167:	42 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%eax
  10016e:	00 
  10016f:	39 c2                	cmp    %eax,%edx
  100171:	0f 8c 55 ff ff ff    	jl     1000cc <process_main()+0xb3>
    register uintptr_t rax asm("rax") = syscallno;
  100177:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  10017c:	0f 05                	syscall 
            continue;
  10017e:	eb c6                	jmp    100146 <process_main()+0x12d>
    register uintptr_t rax asm("rax") = syscallno;
  100180:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  100185:	0f 05                	syscall 
            if (sys_fork() == 0) {
  100187:	85 c0                	test   %eax,%eax
  100189:	75 bb                	jne    100146 <process_main()+0x12d>
                speed = rand(1, 16);
  10018b:	be 10 00 00 00       	mov    $0x10,%esi
  100190:	bf 01 00 00 00       	mov    $0x1,%edi
  100195:	e8 8a 01 00 00       	call   100324 <rand(int, int)>
  10019a:	41 89 c4             	mov    %eax,%r12d
  10019d:	eb a7                	jmp    100146 <process_main()+0x12d>
            sys_exit();
  10019f:	e8 5c fe ff ff       	call   100000 <sys_exit()>
                console_printf(CPOS(24, 0), 0, "\n");
  1001a4:	ba ec 0d 10 00       	mov    $0x100dec,%edx
  1001a9:	be 00 00 00 00       	mov    $0x0,%esi
  1001ae:	bf 80 07 00 00       	mov    $0x780,%edi
  1001b3:	b8 00 00 00 00       	mov    $0x0,%eax
  1001b8:	e8 a2 0b 00 00       	call   100d5f <console_printf(int, int, char const*, ...)>
  1001bd:	e9 76 ff ff ff       	jmp    100138 <process_main()+0x11f>
        } else if (nalloc < 4) {
  1001c2:	83 fb 03             	cmp    $0x3,%ebx
  1001c5:	76 08                	jbe    1001cf <process_main()+0x1b6>
            sys_exit();
        } else {
            nalloc -= 4;
  1001c7:	83 eb 04             	sub    $0x4,%ebx
  1001ca:	e9 77 ff ff ff       	jmp    100146 <process_main()+0x12d>
            sys_exit();
  1001cf:	e8 2c fe ff ff       	call   100000 <sys_exit()>
        }
    }

    // After running out of memory
    while (true) {
        if (rand(0, 2 * ALLOC_SLOWDOWN - 1) == 0) {
  1001d4:	be 23 00 00 00       	mov    $0x23,%esi
  1001d9:	bf 00 00 00 00       	mov    $0x0,%edi
  1001de:	e8 41 01 00 00       	call   100324 <rand(int, int)>
  1001e3:	85 c0                	test   %eax,%eax
  1001e5:	74 09                	je     1001f0 <process_main()+0x1d7>
    register uintptr_t rax asm("rax") = syscallno;
  1001e7:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  1001ec:	0f 05                	syscall 
}
  1001ee:	eb e4                	jmp    1001d4 <process_main()+0x1bb>
            sys_exit();
  1001f0:	e8 0b fe ff ff       	call   100000 <sys_exit()>

00000000001001f5 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1001f5:	f3 0f 1e fa          	endbr64 
  1001f9:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1001fc:	48 39 fe             	cmp    %rdi,%rsi
  1001ff:	72 1d                	jb     10021e <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  100201:	b9 00 00 00 00       	mov    $0x0,%ecx
  100206:	48 85 d2             	test   %rdx,%rdx
  100209:	74 12                	je     10021d <memmove+0x28>
            *d++ = *s++;
  10020b:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  10020f:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  100213:	48 83 c1 01          	add    $0x1,%rcx
  100217:	48 39 ca             	cmp    %rcx,%rdx
  10021a:	75 ef                	jne    10020b <memmove+0x16>
        }
    }
    return dst;
}
  10021c:	c3                   	ret    
  10021d:	c3                   	ret    
    if (s < d && s + n > d) {
  10021e:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100222:	48 39 cf             	cmp    %rcx,%rdi
  100225:	73 da                	jae    100201 <memmove+0xc>
        while (n-- > 0) {
  100227:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10022b:	48 85 d2             	test   %rdx,%rdx
  10022e:	74 ec                	je     10021c <memmove+0x27>
            *--d = *--s;
  100230:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100234:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  100237:	48 83 e9 01          	sub    $0x1,%rcx
  10023b:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  10023f:	75 ef                	jne    100230 <memmove+0x3b>
  100241:	c3                   	ret    

0000000000100242 <memset>:

void* memset(void* v, int c, size_t n) {
  100242:	f3 0f 1e fa          	endbr64 
  100246:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100249:	48 85 d2             	test   %rdx,%rdx
  10024c:	74 12                	je     100260 <memset+0x1e>
  10024e:	48 01 fa             	add    %rdi,%rdx
  100251:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
  100254:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100257:	48 83 c1 01          	add    $0x1,%rcx
  10025b:	48 39 ca             	cmp    %rcx,%rdx
  10025e:	75 f4                	jne    100254 <memset+0x12>
    }
    return v;
}
  100260:	c3                   	ret    

0000000000100261 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  100261:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  100265:	80 3f 00             	cmpb   $0x0,(%rdi)
  100268:	74 10                	je     10027a <strlen+0x19>
  10026a:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  10026f:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  100273:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100277:	75 f6                	jne    10026f <strlen+0xe>
  100279:	c3                   	ret    
  10027a:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  10027f:	c3                   	ret    

0000000000100280 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  100280:	f3 0f 1e fa          	endbr64 
  100284:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100287:	ba 00 00 00 00       	mov    $0x0,%edx
  10028c:	48 85 f6             	test   %rsi,%rsi
  10028f:	74 11                	je     1002a2 <strnlen+0x22>
  100291:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
  100295:	74 0c                	je     1002a3 <strnlen+0x23>
        ++n;
  100297:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  10029b:	48 39 d0             	cmp    %rdx,%rax
  10029e:	75 f1                	jne    100291 <strnlen+0x11>
  1002a0:	eb 04                	jmp    1002a6 <strnlen+0x26>
  1002a2:	c3                   	ret    
  1002a3:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
  1002a6:	c3                   	ret    

00000000001002a7 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1002a7:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  1002ab:	0f b6 07             	movzbl (%rdi),%eax
  1002ae:	84 c0                	test   %al,%al
  1002b0:	74 10                	je     1002c2 <strchr+0x1b>
  1002b2:	40 38 f0             	cmp    %sil,%al
  1002b5:	74 18                	je     1002cf <strchr+0x28>
        ++s;
  1002b7:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1002bb:	0f b6 07             	movzbl (%rdi),%eax
  1002be:	84 c0                	test   %al,%al
  1002c0:	75 f0                	jne    1002b2 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  1002c2:	40 84 f6             	test   %sil,%sil
  1002c5:	b8 00 00 00 00       	mov    $0x0,%eax
  1002ca:	48 0f 44 c7          	cmove  %rdi,%rax
    }
}
  1002ce:	c3                   	ret    
  1002cf:	48 89 f8             	mov    %rdi,%rax
  1002d2:	c3                   	ret    

00000000001002d3 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  1002d3:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  1002d7:	83 3d 3a 1d 00 00 00 	cmpl   $0x0,0x1d3a(%rip)        # 102018 <rand_seed_set>
  1002de:	74 27                	je     100307 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  1002e0:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  1002e7:	f4 51 58 
  1002ea:	48 0f af 05 1e 1d 00 	imul   0x1d1e(%rip),%rax        # 102010 <rand_seed>
  1002f1:	00 
  1002f2:	48 83 c0 01          	add    $0x1,%rax
  1002f6:	48 89 05 13 1d 00 00 	mov    %rax,0x1d13(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1002fd:	48 c1 e8 20          	shr    $0x20,%rax
  100301:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100306:	c3                   	ret    

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100307:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  10030e:	87 d4 30 
  100311:	48 89 05 f8 1c 00 00 	mov    %rax,0x1cf8(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100318:	c7 05 f6 1c 00 00 01 	movl   $0x1,0x1cf6(%rip)        # 102018 <rand_seed_set>
  10031f:	00 00 00 
}
  100322:	eb bc                	jmp    1002e0 <rand()+0xd>

0000000000100324 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100324:	f3 0f 1e fa          	endbr64 
  100328:	55                   	push   %rbp
  100329:	48 89 e5             	mov    %rsp,%rbp
  10032c:	41 54                	push   %r12
  10032e:	53                   	push   %rbx
    assert(min <= max);
  10032f:	39 f7                	cmp    %esi,%edi
  100331:	7f 26                	jg     100359 <rand(int, int)+0x35>
  100333:	41 89 fc             	mov    %edi,%r12d
  100336:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100338:	e8 96 ff ff ff       	call   1002d3 <rand()>
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10033d:	44 29 e3             	sub    %r12d,%ebx
  100340:	83 c3 01             	add    $0x1,%ebx
  100343:	48 63 db             	movslq %ebx,%rbx
    unsigned long r = rand();
  100346:	48 98                	cltq   
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100348:	48 0f af d8          	imul   %rax,%rbx
  10034c:	48 c1 eb 1f          	shr    $0x1f,%rbx
  100350:	41 8d 04 1c          	lea    (%r12,%rbx,1),%eax
}
  100354:	5b                   	pop    %rbx
  100355:	41 5c                	pop    %r12
  100357:	5d                   	pop    %rbp
  100358:	c3                   	ret    
    assert(min <= max);
  100359:	ba ee 0d 10 00       	mov    $0x100dee,%edx
  10035e:	be f2 00 00 00       	mov    $0xf2,%esi
  100363:	bf f9 0d 10 00       	mov    $0x100df9,%edi
  100368:	e8 2c 0a 00 00       	call   100d99 <assert_fail(char const*, int, char const*)>
  10036d:	90                   	nop

000000000010036e <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  10036e:	f3 0f 1e fa          	endbr64 
  100372:	55                   	push   %rbp
  100373:	48 89 e5             	mov    %rsp,%rbp
  100376:	41 57                	push   %r15
  100378:	41 56                	push   %r14
  10037a:	41 55                	push   %r13
  10037c:	41 54                	push   %r12
  10037e:	53                   	push   %rbx
  10037f:	48 83 ec 58          	sub    $0x58,%rsp
  100383:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  100387:	0f b6 02             	movzbl (%rdx),%eax
  10038a:	84 c0                	test   %al,%al
  10038c:	0f 84 c8 07 00 00    	je     100b5a <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
  100392:	49 89 fe             	mov    %rdi,%r14
  100395:	49 89 d4             	mov    %rdx,%r12
  100398:	41 89 f7             	mov    %esi,%r15d
  10039b:	e9 89 05 00 00       	jmp    100929 <printer::vprintf(int, char const*, __va_list_tag*)+0x5bb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  1003a0:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  1003a5:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
  1003ab:	45 84 e4             	test   %r12b,%r12b
  1003ae:	0f 84 87 07 00 00    	je     100b3b <printer::vprintf(int, char const*, __va_list_tag*)+0x7cd>
        int flags = 0;
  1003b4:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  1003ba:	41 0f be f4          	movsbl %r12b,%esi
  1003be:	bf d0 14 10 00       	mov    $0x1014d0,%edi
  1003c3:	e8 df fe ff ff       	call   1002a7 <strchr>
  1003c8:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  1003cb:	48 85 c0             	test   %rax,%rax
  1003ce:	74 70                	je     100440 <printer::vprintf(int, char const*, __va_list_tag*)+0xd2>
                flags |= 1 << (flagc - flag_chars);
  1003d0:	48 81 e9 d0 14 10 00 	sub    $0x1014d0,%rcx
  1003d7:	b8 01 00 00 00       	mov    $0x1,%eax
  1003dc:	d3 e0                	shl    %cl,%eax
  1003de:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1003e1:	48 83 c3 01          	add    $0x1,%rbx
  1003e5:	44 0f b6 23          	movzbl (%rbx),%r12d
  1003e9:	45 84 e4             	test   %r12b,%r12b
  1003ec:	75 cc                	jne    1003ba <printer::vprintf(int, char const*, __va_list_tag*)+0x4c>
  1003ee:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
                break;
            }
        }

        // process width
        int width = -1;
  1003f2:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1003f8:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,-0x64(%rbp)
        if (*format == '.') {
  1003ff:	80 3b 2e             	cmpb   $0x2e,(%rbx)
  100402:	0f 84 c7 00 00 00    	je     1004cf <printer::vprintf(int, char const*, __va_list_tag*)+0x161>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  100408:	0f b6 03             	movzbl (%rbx),%eax
  10040b:	3c 6c                	cmp    $0x6c,%al
  10040d:	0f 84 4f 01 00 00    	je     100562 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
  100413:	0f 8f 3d 01 00 00    	jg     100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e8>
  100419:	3c 68                	cmp    $0x68,%al
  10041b:	0f 85 60 01 00 00    	jne    100581 <printer::vprintf(int, char const*, __va_list_tag*)+0x213>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  100421:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  100425:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100429:	8d 50 bd             	lea    -0x43(%rax),%edx
  10042c:	80 fa 35             	cmp    $0x35,%dl
  10042f:	0f 87 ac 05 00 00    	ja     1009e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
  100435:	0f b6 d2             	movzbl %dl,%edx
  100438:	3e ff 24 d5 10 0e 10 	notrack jmp *0x100e10(,%rdx,8)
  10043f:	00 
        if (*format >= '1' && *format <= '9') {
  100440:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
  100444:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
  100449:	3c 08                	cmp    $0x8,%al
  10044b:	77 32                	ja     10047f <printer::vprintf(int, char const*, __va_list_tag*)+0x111>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10044d:	0f b6 03             	movzbl (%rbx),%eax
  100450:	8d 50 d0             	lea    -0x30(%rax),%edx
  100453:	80 fa 09             	cmp    $0x9,%dl
  100456:	77 61                	ja     1004b9 <printer::vprintf(int, char const*, __va_list_tag*)+0x14b>
  100458:	41 bd 00 00 00 00    	mov    $0x0,%r13d
                width = 10 * width + *format++ - '0';
  10045e:	48 83 c3 01          	add    $0x1,%rbx
  100462:	43 8d 54 ad 00       	lea    0x0(%r13,%r13,4),%edx
  100467:	0f be c0             	movsbl %al,%eax
  10046a:	44 8d 6c 50 d0       	lea    -0x30(%rax,%rdx,2),%r13d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10046f:	0f b6 03             	movzbl (%rbx),%eax
  100472:	8d 50 d0             	lea    -0x30(%rax),%edx
  100475:	80 fa 09             	cmp    $0x9,%dl
  100478:	76 e4                	jbe    10045e <printer::vprintf(int, char const*, __va_list_tag*)+0xf0>
  10047a:	e9 79 ff ff ff       	jmp    1003f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        } else if (*format == '*') {
  10047f:	41 80 fc 2a          	cmp    $0x2a,%r12b
  100483:	75 3f                	jne    1004c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x156>
            width = va_arg(val, int);
  100485:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100489:	8b 01                	mov    (%rcx),%eax
  10048b:	83 f8 2f             	cmp    $0x2f,%eax
  10048e:	77 17                	ja     1004a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x139>
  100490:	89 c2                	mov    %eax,%edx
  100492:	48 03 51 10          	add    0x10(%rcx),%rdx
  100496:	83 c0 08             	add    $0x8,%eax
  100499:	89 01                	mov    %eax,(%rcx)
  10049b:	44 8b 2a             	mov    (%rdx),%r13d
            ++format;
  10049e:	48 83 c3 01          	add    $0x1,%rbx
  1004a2:	e9 51 ff ff ff       	jmp    1003f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            width = va_arg(val, int);
  1004a7:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004ab:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1004af:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004b3:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1004b7:	eb e2                	jmp    10049b <printer::vprintf(int, char const*, __va_list_tag*)+0x12d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1004b9:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  1004bf:	e9 34 ff ff ff       	jmp    1003f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        int width = -1;
  1004c4:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  1004ca:	e9 29 ff ff ff       	jmp    1003f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            ++format;
  1004cf:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
  1004d3:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1004d7:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1004da:	80 f9 09             	cmp    $0x9,%cl
  1004dd:	76 13                	jbe    1004f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x184>
            } else if (*format == '*') {
  1004df:	3c 2a                	cmp    $0x2a,%al
  1004e1:	74 33                	je     100516 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a8>
            ++format;
  1004e3:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
  1004e6:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
  1004ed:	e9 16 ff ff ff       	jmp    100408 <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1004f2:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
  1004f7:	48 83 c2 01          	add    $0x1,%rdx
  1004fb:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  1004fe:	0f be c0             	movsbl %al,%eax
  100501:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100505:	0f b6 02             	movzbl (%rdx),%eax
  100508:	8d 70 d0             	lea    -0x30(%rax),%esi
  10050b:	40 80 fe 09          	cmp    $0x9,%sil
  10050f:	76 e6                	jbe    1004f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x189>
                    precision = 10 * precision + *format++ - '0';
  100511:	48 89 d3             	mov    %rdx,%rbx
  100514:	eb 1c                	jmp    100532 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c4>
                precision = va_arg(val, int);
  100516:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10051a:	8b 01                	mov    (%rcx),%eax
  10051c:	83 f8 2f             	cmp    $0x2f,%eax
  10051f:	77 23                	ja     100544 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d6>
  100521:	89 c2                	mov    %eax,%edx
  100523:	48 03 51 10          	add    0x10(%rcx),%rdx
  100527:	83 c0 08             	add    $0x8,%eax
  10052a:	89 01                	mov    %eax,(%rcx)
  10052c:	8b 0a                	mov    (%rdx),%ecx
                ++format;
  10052e:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
  100532:	85 c9                	test   %ecx,%ecx
  100534:	b8 00 00 00 00       	mov    $0x0,%eax
  100539:	0f 49 c1             	cmovns %ecx,%eax
  10053c:	89 45 9c             	mov    %eax,-0x64(%rbp)
  10053f:	e9 c4 fe ff ff       	jmp    100408 <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                precision = va_arg(val, int);
  100544:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100548:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10054c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100550:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100554:	eb d6                	jmp    10052c <printer::vprintf(int, char const*, __va_list_tag*)+0x1be>
        switch (*format) {
  100556:	3c 74                	cmp    $0x74,%al
  100558:	74 08                	je     100562 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
  10055a:	3c 7a                	cmp    $0x7a,%al
  10055c:	0f 85 e5 05 00 00    	jne    100b47 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d9>
            ++format;
  100562:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        switch (*format) {
  100566:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  10056a:	8d 50 bd             	lea    -0x43(%rax),%edx
  10056d:	80 fa 35             	cmp    $0x35,%dl
  100570:	0f 87 6b 04 00 00    	ja     1009e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
  100576:	0f b6 d2             	movzbl %dl,%edx
  100579:	3e ff 24 d5 c0 0f 10 	notrack jmp *0x100fc0(,%rdx,8)
  100580:	00 
  100581:	8d 50 bd             	lea    -0x43(%rax),%edx
  100584:	80 fa 35             	cmp    $0x35,%dl
  100587:	0f 87 51 04 00 00    	ja     1009de <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  10058d:	0f b6 d2             	movzbl %dl,%edx
  100590:	3e ff 24 d5 70 11 10 	notrack jmp *0x101170(,%rdx,8)
  100597:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100598:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10059c:	8b 07                	mov    (%rdi),%eax
  10059e:	83 f8 2f             	cmp    $0x2f,%eax
  1005a1:	77 3b                	ja     1005de <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
  1005a3:	89 c2                	mov    %eax,%edx
  1005a5:	48 03 57 10          	add    0x10(%rdi),%rdx
  1005a9:	83 c0 08             	add    $0x8,%eax
  1005ac:	89 07                	mov    %eax,(%rdi)
  1005ae:	48 8b 12             	mov    (%rdx),%rdx
  1005b1:	48 89 cb             	mov    %rcx,%rbx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  1005b4:	48 89 d0             	mov    %rdx,%rax
  1005b7:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  1005bb:	49 89 d0             	mov    %rdx,%r8
  1005be:	49 f7 d8             	neg    %r8
  1005c1:	25 80 00 00 00       	and    $0x80,%eax
  1005c6:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  1005ca:	0b 45 a8             	or     -0x58(%rbp),%eax
  1005cd:	83 c8 60             	or     $0x60,%eax
  1005d0:	89 45 a8             	mov    %eax,-0x58(%rbp)
        const char* data = "";
  1005d3:	41 bc ed 0d 10 00    	mov    $0x100ded,%r12d
            break;
  1005d9:	e9 c9 01 00 00       	jmp    1007a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1005de:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1005e2:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1005e6:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1005ea:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1005ee:	eb be                	jmp    1005ae <printer::vprintf(int, char const*, __va_list_tag*)+0x240>
        switch (*format) {
  1005f0:	48 89 cb             	mov    %rcx,%rbx
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1005f3:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1005f7:	8b 01                	mov    (%rcx),%eax
  1005f9:	83 f8 2f             	cmp    $0x2f,%eax
  1005fc:	77 10                	ja     10060e <printer::vprintf(int, char const*, __va_list_tag*)+0x2a0>
  1005fe:	89 c2                	mov    %eax,%edx
  100600:	48 03 51 10          	add    0x10(%rcx),%rdx
  100604:	83 c0 08             	add    $0x8,%eax
  100607:	89 01                	mov    %eax,(%rcx)
  100609:	48 63 12             	movslq (%rdx),%rdx
  10060c:	eb a6                	jmp    1005b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x246>
  10060e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100612:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100616:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10061a:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10061e:	eb e9                	jmp    100609 <printer::vprintf(int, char const*, __va_list_tag*)+0x29b>
        switch (*format) {
  100620:	48 89 cb             	mov    %rcx,%rbx
  100623:	b8 01 00 00 00       	mov    $0x1,%eax
  100628:	be 0a 00 00 00       	mov    $0xa,%esi
  10062d:	e9 a8 00 00 00       	jmp    1006da <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  100632:	48 89 cb             	mov    %rcx,%rbx
  100635:	b8 00 00 00 00       	mov    $0x0,%eax
  10063a:	be 0a 00 00 00       	mov    $0xa,%esi
  10063f:	e9 96 00 00 00       	jmp    1006da <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  100644:	b8 00 00 00 00       	mov    $0x0,%eax
  100649:	be 0a 00 00 00       	mov    $0xa,%esi
  10064e:	e9 87 00 00 00       	jmp    1006da <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  100653:	b8 00 00 00 00       	mov    $0x0,%eax
  100658:	be 0a 00 00 00       	mov    $0xa,%esi
  10065d:	eb 7b                	jmp    1006da <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        }
        case 'u':
        format_unsigned:
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10065f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100663:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100667:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10066b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10066f:	e9 84 00 00 00       	jmp    1006f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x38a>
  100674:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100678:	8b 07                	mov    (%rdi),%eax
  10067a:	83 f8 2f             	cmp    $0x2f,%eax
  10067d:	77 10                	ja     10068f <printer::vprintf(int, char const*, __va_list_tag*)+0x321>
  10067f:	89 c2                	mov    %eax,%edx
  100681:	48 03 57 10          	add    0x10(%rdi),%rdx
  100685:	83 c0 08             	add    $0x8,%eax
  100688:	89 07                	mov    %eax,(%rdi)
  10068a:	44 8b 02             	mov    (%rdx),%r8d
  10068d:	eb 6c                	jmp    1006fb <printer::vprintf(int, char const*, __va_list_tag*)+0x38d>
  10068f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100693:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100697:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10069b:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10069f:	eb e9                	jmp    10068a <printer::vprintf(int, char const*, __va_list_tag*)+0x31c>
  1006a1:	41 89 f1             	mov    %esi,%r9d
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1006a4:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
    const char* digits = upper_digits;
  1006ab:	bf 00 15 10 00       	mov    $0x101500,%edi
  1006b0:	e9 5f 03 00 00       	jmp    100a14 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
  1006b5:	48 89 cb             	mov    %rcx,%rbx
  1006b8:	b8 01 00 00 00       	mov    $0x1,%eax
  1006bd:	eb 16                	jmp    1006d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  1006bf:	48 89 cb             	mov    %rcx,%rbx
  1006c2:	b8 00 00 00 00       	mov    $0x0,%eax
  1006c7:	eb 0c                	jmp    1006d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  1006c9:	b8 00 00 00 00       	mov    $0x0,%eax
  1006ce:	eb 05                	jmp    1006d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  1006d0:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  1006d5:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1006da:	85 c0                	test   %eax,%eax
  1006dc:	74 96                	je     100674 <printer::vprintf(int, char const*, __va_list_tag*)+0x306>
  1006de:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006e2:	8b 07                	mov    (%rdi),%eax
  1006e4:	83 f8 2f             	cmp    $0x2f,%eax
  1006e7:	0f 87 72 ff ff ff    	ja     10065f <printer::vprintf(int, char const*, __va_list_tag*)+0x2f1>
  1006ed:	89 c2                	mov    %eax,%edx
  1006ef:	48 03 57 10          	add    0x10(%rdi),%rdx
  1006f3:	83 c0 08             	add    $0x8,%eax
  1006f6:	89 07                	mov    %eax,(%rdi)
  1006f8:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  1006fb:	83 4d a8 20          	orl    $0x20,-0x58(%rbp)
    if (base < 0) {
  1006ff:	85 f6                	test   %esi,%esi
  100701:	79 9e                	jns    1006a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x333>
        base = -base;
  100703:	41 89 f1             	mov    %esi,%r9d
  100706:	f7 de                	neg    %esi
  100708:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
        digits = lower_digits;
  10070f:	bf e0 14 10 00       	mov    $0x1014e0,%edi
  100714:	e9 fb 02 00 00       	jmp    100a14 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
  100719:	48 89 cb             	mov    %rcx,%rbx
  10071c:	b8 01 00 00 00       	mov    $0x1,%eax
  100721:	eb 16                	jmp    100739 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  100723:	48 89 cb             	mov    %rcx,%rbx
  100726:	b8 00 00 00 00       	mov    $0x0,%eax
  10072b:	eb 0c                	jmp    100739 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  10072d:	b8 00 00 00 00       	mov    $0x0,%eax
  100732:	eb 05                	jmp    100739 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  100734:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  100739:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  10073e:	eb 9a                	jmp    1006da <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        switch (*format) {
  100740:	48 89 cb             	mov    %rcx,%rbx
            num = (uintptr_t) va_arg(val, void*);
  100743:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100747:	8b 01                	mov    (%rcx),%eax
  100749:	83 f8 2f             	cmp    $0x2f,%eax
  10074c:	77 21                	ja     10076f <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
  10074e:	89 c2                	mov    %eax,%edx
  100750:	48 03 51 10          	add    0x10(%rcx),%rdx
  100754:	83 c0 08             	add    $0x8,%eax
  100757:	89 01                	mov    %eax,(%rcx)
  100759:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  10075c:	81 4d a8 21 01 00 00 	orl    $0x121,-0x58(%rbp)
            base = -16;
  100763:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100768:	eb 99                	jmp    100703 <printer::vprintf(int, char const*, __va_list_tag*)+0x395>
        switch (*format) {
  10076a:	48 89 cb             	mov    %rcx,%rbx
  10076d:	eb d4                	jmp    100743 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d5>
            num = (uintptr_t) va_arg(val, void*);
  10076f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100773:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100777:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10077b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10077f:	eb d8                	jmp    100759 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
        switch (*format) {
  100781:	48 89 cb             	mov    %rcx,%rbx
            data = va_arg(val, char*);
  100784:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100788:	8b 07                	mov    (%rdi),%eax
  10078a:	83 f8 2f             	cmp    $0x2f,%eax
  10078d:	0f 87 b9 01 00 00    	ja     10094c <printer::vprintf(int, char const*, __va_list_tag*)+0x5de>
  100793:	89 c2                	mov    %eax,%edx
  100795:	48 03 57 10          	add    0x10(%rdi),%rdx
  100799:	83 c0 08             	add    $0x8,%eax
  10079c:	89 07                	mov    %eax,(%rdi)
  10079e:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
  1007a1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
        if (flags & FLAG_NUMERIC) {
  1007a7:	8b 45 a8             	mov    -0x58(%rbp),%eax
  1007aa:	83 e0 20             	and    $0x20,%eax
  1007ad:	89 45 8c             	mov    %eax,-0x74(%rbp)
  1007b0:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1007b6:	0f 85 48 02 00 00    	jne    100a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x696>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1007bc:	8b 45 a8             	mov    -0x58(%rbp),%eax
  1007bf:	89 45 88             	mov    %eax,-0x78(%rbp)
  1007c2:	83 e0 60             	and    $0x60,%eax
  1007c5:	83 f8 60             	cmp    $0x60,%eax
  1007c8:	0f 84 7b 02 00 00    	je     100a49 <printer::vprintf(int, char const*, __va_list_tag*)+0x6db>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1007ce:	8b 45 a8             	mov    -0x58(%rbp),%eax
  1007d1:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1007d4:	48 c7 45 a0 ed 0d 10 	movq   $0x100ded,-0x60(%rbp)
  1007db:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1007dc:	83 f8 21             	cmp    $0x21,%eax
  1007df:	0f 84 a0 02 00 00    	je     100a85 <printer::vprintf(int, char const*, __va_list_tag*)+0x717>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1007e5:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
  1007e8:	89 c8                	mov    %ecx,%eax
  1007ea:	f7 d0                	not    %eax
  1007ec:	c1 e8 1f             	shr    $0x1f,%eax
  1007ef:	89 45 84             	mov    %eax,-0x7c(%rbp)
  1007f2:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
  1007f6:	0f 85 c5 02 00 00    	jne    100ac1 <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
  1007fc:	84 c0                	test   %al,%al
  1007fe:	0f 84 bd 02 00 00    	je     100ac1 <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
            datalen = strnlen(data, precision);
  100804:	48 63 f1             	movslq %ecx,%rsi
  100807:	4c 89 e7             	mov    %r12,%rdi
  10080a:	e8 71 fa ff ff       	call   100280 <strnlen>
  10080f:	89 45 98             	mov    %eax,-0x68(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  100812:	8b 45 88             	mov    -0x78(%rbp),%eax
  100815:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  100818:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  10081f:	83 f8 22             	cmp    $0x22,%eax
  100822:	0f 84 d1 02 00 00    	je     100af9 <printer::vprintf(int, char const*, __va_list_tag*)+0x78b>
        }

        width -= datalen + zeros + strlen(prefix);
  100828:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  10082c:	e8 30 fa ff ff       	call   100261 <strlen>
  100831:	8b 55 9c             	mov    -0x64(%rbp),%edx
  100834:	03 55 98             	add    -0x68(%rbp),%edx
  100837:	44 89 e9             	mov    %r13d,%ecx
  10083a:	29 d1                	sub    %edx,%ecx
  10083c:	29 c1                	sub    %eax,%ecx
  10083e:	89 4d 8c             	mov    %ecx,-0x74(%rbp)
  100841:	41 89 cd             	mov    %ecx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100844:	f6 45 a8 04          	testb  $0x4,-0x58(%rbp)
  100848:	75 2f                	jne    100879 <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
  10084a:	85 c9                	test   %ecx,%ecx
  10084c:	7e 2b                	jle    100879 <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
            putc(' ', color);
  10084e:	49 8b 06             	mov    (%r14),%rax
  100851:	44 89 fa             	mov    %r15d,%edx
  100854:	be 20 00 00 00       	mov    $0x20,%esi
  100859:	4c 89 f7             	mov    %r14,%rdi
  10085c:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10085e:	41 83 ed 01          	sub    $0x1,%r13d
  100862:	45 85 ed             	test   %r13d,%r13d
  100865:	7f e7                	jg     10084e <printer::vprintf(int, char const*, __va_list_tag*)+0x4e0>
  100867:	8b 7d 8c             	mov    -0x74(%rbp),%edi
  10086a:	85 ff                	test   %edi,%edi
  10086c:	b8 01 00 00 00       	mov    $0x1,%eax
  100871:	0f 4f c7             	cmovg  %edi,%eax
  100874:	29 c7                	sub    %eax,%edi
  100876:	41 89 fd             	mov    %edi,%r13d
        }
        for (; *prefix; ++prefix) {
  100879:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  10087d:	0f b6 07             	movzbl (%rdi),%eax
  100880:	84 c0                	test   %al,%al
  100882:	74 24                	je     1008a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x53a>
  100884:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100888:	48 89 fb             	mov    %rdi,%rbx
            putc(*prefix, color);
  10088b:	0f b6 f0             	movzbl %al,%esi
  10088e:	49 8b 06             	mov    (%r14),%rax
  100891:	44 89 fa             	mov    %r15d,%edx
  100894:	4c 89 f7             	mov    %r14,%rdi
  100897:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
  100899:	48 83 c3 01          	add    $0x1,%rbx
  10089d:	0f b6 03             	movzbl (%rbx),%eax
  1008a0:	84 c0                	test   %al,%al
  1008a2:	75 e7                	jne    10088b <printer::vprintf(int, char const*, __va_list_tag*)+0x51d>
  1008a4:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; zeros > 0; --zeros) {
  1008a8:	8b 45 9c             	mov    -0x64(%rbp),%eax
  1008ab:	85 c0                	test   %eax,%eax
  1008ad:	7e 1f                	jle    1008ce <printer::vprintf(int, char const*, __va_list_tag*)+0x560>
  1008af:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1008b3:	89 c3                	mov    %eax,%ebx
            putc('0', color);
  1008b5:	49 8b 06             	mov    (%r14),%rax
  1008b8:	44 89 fa             	mov    %r15d,%edx
  1008bb:	be 30 00 00 00       	mov    $0x30,%esi
  1008c0:	4c 89 f7             	mov    %r14,%rdi
  1008c3:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
  1008c5:	83 eb 01             	sub    $0x1,%ebx
  1008c8:	75 eb                	jne    1008b5 <printer::vprintf(int, char const*, __va_list_tag*)+0x547>
  1008ca:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; datalen > 0; ++data, --datalen) {
  1008ce:	8b 45 98             	mov    -0x68(%rbp),%eax
  1008d1:	85 c0                	test   %eax,%eax
  1008d3:	7e 29                	jle    1008fe <printer::vprintf(int, char const*, __va_list_tag*)+0x590>
  1008d5:	89 c0                	mov    %eax,%eax
  1008d7:	4c 01 e0             	add    %r12,%rax
  1008da:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1008de:	48 89 c3             	mov    %rax,%rbx
            putc(*data, color);
  1008e1:	41 0f b6 34 24       	movzbl (%r12),%esi
  1008e6:	49 8b 06             	mov    (%r14),%rax
  1008e9:	44 89 fa             	mov    %r15d,%edx
  1008ec:	4c 89 f7             	mov    %r14,%rdi
  1008ef:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1008f1:	49 83 c4 01          	add    $0x1,%r12
  1008f5:	49 39 dc             	cmp    %rbx,%r12
  1008f8:	75 e7                	jne    1008e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x573>
  1008fa:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; width > 0; --width) {
  1008fe:	45 85 ed             	test   %r13d,%r13d
  100901:	7e 16                	jle    100919 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
            putc(' ', color);
  100903:	49 8b 06             	mov    (%r14),%rax
  100906:	44 89 fa             	mov    %r15d,%edx
  100909:	be 20 00 00 00       	mov    $0x20,%esi
  10090e:	4c 89 f7             	mov    %r14,%rdi
  100911:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
  100913:	41 83 ed 01          	sub    $0x1,%r13d
  100917:	75 ea                	jne    100903 <printer::vprintf(int, char const*, __va_list_tag*)+0x595>
    for (; *format; ++format) {
  100919:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  10091d:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100921:	84 c0                	test   %al,%al
  100923:	0f 84 31 02 00 00    	je     100b5a <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
        if (*format != '%') {
  100929:	3c 25                	cmp    $0x25,%al
  10092b:	0f 84 6f fa ff ff    	je     1003a0 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  100931:	0f b6 f0             	movzbl %al,%esi
  100934:	49 8b 06             	mov    (%r14),%rax
  100937:	44 89 fa             	mov    %r15d,%edx
  10093a:	4c 89 f7             	mov    %r14,%rdi
  10093d:	ff 10                	call   *(%rax)
            continue;
  10093f:	4c 89 e3             	mov    %r12,%rbx
  100942:	eb d5                	jmp    100919 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
  100944:	48 89 cb             	mov    %rcx,%rbx
  100947:	e9 38 fe ff ff       	jmp    100784 <printer::vprintf(int, char const*, __va_list_tag*)+0x416>
            data = va_arg(val, char*);
  10094c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100950:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100954:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100958:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10095c:	e9 3d fe ff ff       	jmp    10079e <printer::vprintf(int, char const*, __va_list_tag*)+0x430>
        switch (*format) {
  100961:	48 89 cb             	mov    %rcx,%rbx
            color = va_arg(val, int);
  100964:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100968:	8b 01                	mov    (%rcx),%eax
  10096a:	83 f8 2f             	cmp    $0x2f,%eax
  10096d:	77 15                	ja     100984 <printer::vprintf(int, char const*, __va_list_tag*)+0x616>
  10096f:	89 c2                	mov    %eax,%edx
  100971:	48 03 51 10          	add    0x10(%rcx),%rdx
  100975:	83 c0 08             	add    $0x8,%eax
  100978:	89 01                	mov    %eax,(%rcx)
  10097a:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  10097d:	eb 9a                	jmp    100919 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
  10097f:	48 89 cb             	mov    %rcx,%rbx
  100982:	eb e0                	jmp    100964 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f6>
            color = va_arg(val, int);
  100984:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100988:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10098c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100990:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100994:	eb e4                	jmp    10097a <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
        switch (*format) {
  100996:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = va_arg(val, int);
  100999:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10099d:	8b 07                	mov    (%rdi),%eax
  10099f:	83 f8 2f             	cmp    $0x2f,%eax
  1009a2:	77 28                	ja     1009cc <printer::vprintf(int, char const*, __va_list_tag*)+0x65e>
  1009a4:	89 c2                	mov    %eax,%edx
  1009a6:	48 03 57 10          	add    0x10(%rdi),%rdx
  1009aa:	83 c0 08             	add    $0x8,%eax
  1009ad:	89 07                	mov    %eax,(%rdi)
  1009af:	8b 02                	mov    (%rdx),%eax
  1009b1:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1009b4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1009b8:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  1009bc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  1009c2:	e9 e0 fd ff ff       	jmp    1007a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        switch (*format) {
  1009c7:	48 89 cb             	mov    %rcx,%rbx
  1009ca:	eb cd                	jmp    100999 <printer::vprintf(int, char const*, __va_list_tag*)+0x62b>
            numbuf[0] = va_arg(val, int);
  1009cc:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1009d0:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1009d4:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1009d8:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1009dc:	eb d1                	jmp    1009af <printer::vprintf(int, char const*, __va_list_tag*)+0x641>
        switch (*format) {
  1009de:	48 89 d9             	mov    %rbx,%rcx
            numbuf[0] = (*format ? *format : '%');
  1009e1:	84 c0                	test   %al,%al
  1009e3:	0f 85 39 01 00 00    	jne    100b22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b4>
  1009e9:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1009ed:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1009f1:	48 8d 59 ff          	lea    -0x1(%rcx),%rbx
            data = numbuf;
  1009f5:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  1009f9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1009ff:	e9 a3 fd ff ff       	jmp    1007a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        if (flags & FLAG_NUMERIC) {
  100a04:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  100a0a:	bf 00 15 10 00       	mov    $0x101500,%edi
        if (flags & FLAG_NUMERIC) {
  100a0f:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  100a14:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100a18:	4c 89 c1             	mov    %r8,%rcx
  100a1b:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
  100a1f:	48 63 f6             	movslq %esi,%rsi
  100a22:	49 83 ec 01          	sub    $0x1,%r12
  100a26:	48 89 c8             	mov    %rcx,%rax
  100a29:	ba 00 00 00 00       	mov    $0x0,%edx
  100a2e:	48 f7 f6             	div    %rsi
  100a31:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100a35:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
  100a39:	48 89 ca             	mov    %rcx,%rdx
  100a3c:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  100a3f:	48 39 d6             	cmp    %rdx,%rsi
  100a42:	76 de                	jbe    100a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b4>
  100a44:	e9 73 fd ff ff       	jmp    1007bc <printer::vprintf(int, char const*, __va_list_tag*)+0x44e>
                prefix = "-";
  100a49:	48 c7 45 a0 05 0e 10 	movq   $0x100e05,-0x60(%rbp)
  100a50:	00 
            if (flags & FLAG_NEGATIVE) {
  100a51:	8b 45 a8             	mov    -0x58(%rbp),%eax
  100a54:	a8 80                	test   $0x80,%al
  100a56:	0f 85 89 fd ff ff    	jne    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = "+";
  100a5c:	48 c7 45 a0 00 0e 10 	movq   $0x100e00,-0x60(%rbp)
  100a63:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  100a64:	a8 10                	test   $0x10,%al
  100a66:	0f 85 79 fd ff ff    	jne    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = " ";
  100a6c:	a8 08                	test   $0x8,%al
  100a6e:	ba ed 0d 10 00       	mov    $0x100ded,%edx
  100a73:	b8 07 0e 10 00       	mov    $0x100e07,%eax
  100a78:	48 0f 44 c2          	cmove  %rdx,%rax
  100a7c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  100a80:	e9 60 fd ff ff       	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (base == 16 || base == -16)
  100a85:	41 8d 41 10          	lea    0x10(%r9),%eax
  100a89:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100a8e:	0f 85 51 fd ff ff    	jne    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (num || (flags & FLAG_ALT2))) {
  100a94:	4d 85 c0             	test   %r8,%r8
  100a97:	75 0d                	jne    100aa6 <printer::vprintf(int, char const*, __va_list_tag*)+0x738>
  100a99:	f7 45 a8 00 01 00 00 	testl  $0x100,-0x58(%rbp)
  100aa0:	0f 84 3f fd ff ff    	je     1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            prefix = (base == -16 ? "0x" : "0X");
  100aa6:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100aaa:	ba 09 0e 10 00       	mov    $0x100e09,%edx
  100aaf:	b8 02 0e 10 00       	mov    $0x100e02,%eax
  100ab4:	48 0f 44 c2          	cmove  %rdx,%rax
  100ab8:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  100abc:	e9 24 fd ff ff       	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            datalen = strlen(data);
  100ac1:	4c 89 e7             	mov    %r12,%rdi
  100ac4:	e8 98 f7 ff ff       	call   100261 <strlen>
  100ac9:	89 45 98             	mov    %eax,-0x68(%rbp)
            && precision >= 0) {
  100acc:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
  100ad0:	0f 84 3c fd ff ff    	je     100812 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
  100ad6:	80 7d 84 00          	cmpb   $0x0,-0x7c(%rbp)
  100ada:	0f 84 32 fd ff ff    	je     100812 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
            zeros = precision > datalen ? precision - datalen : 0;
  100ae0:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  100ae3:	89 fa                	mov    %edi,%edx
  100ae5:	29 c2                	sub    %eax,%edx
  100ae7:	39 c7                	cmp    %eax,%edi
  100ae9:	b8 00 00 00 00       	mov    $0x0,%eax
  100aee:	0f 4f c2             	cmovg  %edx,%eax
  100af1:	89 45 9c             	mov    %eax,-0x64(%rbp)
  100af4:	e9 2f fd ff ff       	jmp    100828 <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
                   && datalen + (int) strlen(prefix) < width) {
  100af9:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  100afd:	e8 5f f7 ff ff       	call   100261 <strlen>
  100b02:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100b05:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100b08:	44 89 e9             	mov    %r13d,%ecx
  100b0b:	29 f9                	sub    %edi,%ecx
  100b0d:	29 c1                	sub    %eax,%ecx
  100b0f:	44 39 ea             	cmp    %r13d,%edx
  100b12:	b8 00 00 00 00       	mov    $0x0,%eax
  100b17:	0f 4c c1             	cmovl  %ecx,%eax
  100b1a:	89 45 9c             	mov    %eax,-0x64(%rbp)
  100b1d:	e9 06 fd ff ff       	jmp    100828 <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
  100b22:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = (*format ? *format : '%');
  100b25:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100b28:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100b2c:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  100b30:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100b36:	e9 6c fc ff ff       	jmp    1007a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        int flags = 0;
  100b3b:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  100b42:	e9 ab f8 ff ff       	jmp    1003f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x84>
        switch (*format) {
  100b47:	8d 50 bd             	lea    -0x43(%rax),%edx
  100b4a:	80 fa 35             	cmp    $0x35,%dl
  100b4d:	77 d6                	ja     100b25 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b7>
  100b4f:	0f b6 d2             	movzbl %dl,%edx
  100b52:	3e ff 24 d5 20 13 10 	notrack jmp *0x101320(,%rdx,8)
  100b59:	00 
        }
    }
}
  100b5a:	48 83 c4 58          	add    $0x58,%rsp
  100b5e:	5b                   	pop    %rbx
  100b5f:	41 5c                	pop    %r12
  100b61:	41 5d                	pop    %r13
  100b63:	41 5e                	pop    %r14
  100b65:	41 5f                	pop    %r15
  100b67:	5d                   	pop    %rbp
  100b68:	c3                   	ret    
  100b69:	90                   	nop

0000000000100b6a <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100b6a:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100b6e:	48 c7 07 88 15 10 00 	movq   $0x101588,(%rdi)
  100b75:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100b7c:	00 
  100b7d:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100b80:	85 f6                	test   %esi,%esi
  100b82:	78 18                	js     100b9c <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b84:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100b8a:	7f 0f                	jg     100b9b <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100b8c:	48 63 f6             	movslq %esi,%rsi
  100b8f:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100b96:	00 
  100b97:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100b9b:	c3                   	ret    
        cell_ += cursorpos;
  100b9c:	8b 05 5a 84 fb ff    	mov    -0x47ba6(%rip),%eax        # b8ffc <cursorpos>
  100ba2:	48 98                	cltq   
  100ba4:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100bab:	00 
  100bac:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100bb0:	c3                   	ret    
  100bb1:	90                   	nop

0000000000100bb2 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100bb2:	f3 0f 1e fa          	endbr64 
  100bb6:	55                   	push   %rbp
  100bb7:	48 89 e5             	mov    %rsp,%rbp
  100bba:	53                   	push   %rbx
  100bbb:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100bbf:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100bc6:	00 
  100bc7:	72 18                	jb     100be1 <console_printer::scroll()+0x2f>
  100bc9:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100bcc:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  100bd1:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100bd5:	75 1e                	jne    100bf5 <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
  100bd7:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
  100bdb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100be1:	ba 18 15 10 00       	mov    $0x101518,%edx
  100be6:	be 1f 02 00 00       	mov    $0x21f,%esi
  100beb:	bf f9 0d 10 00       	mov    $0x100df9,%edi
  100bf0:	e8 a4 01 00 00       	call   100d99 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100bf5:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100bfa:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100bff:	48 89 c7             	mov    %rax,%rdi
  100c02:	e8 ee f5 ff ff       	call   1001f5 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100c07:	ba a0 00 00 00       	mov    $0xa0,%edx
  100c0c:	be 00 00 00 00       	mov    $0x0,%esi
  100c11:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100c16:	e8 27 f6 ff ff       	call   100242 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100c1b:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100c1f:	48 2d a0 00 00 00    	sub    $0xa0,%rax
  100c25:	eb b0                	jmp    100bd7 <console_printer::scroll()+0x25>
  100c27:	90                   	nop

0000000000100c28 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100c28:	f3 0f 1e fa          	endbr64 
  100c2c:	55                   	push   %rbp
  100c2d:	48 89 e5             	mov    %rsp,%rbp
  100c30:	41 55                	push   %r13
  100c32:	41 54                	push   %r12
  100c34:	53                   	push   %rbx
  100c35:	48 83 ec 08          	sub    $0x8,%rsp
  100c39:	48 89 fb             	mov    %rdi,%rbx
  100c3c:	41 89 f5             	mov    %esi,%r13d
  100c3f:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c42:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100c46:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100c4c:	72 14                	jb     100c62 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100c4e:	48 89 df             	mov    %rbx,%rdi
  100c51:	e8 5c ff ff ff       	call   100bb2 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c56:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100c5a:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100c60:	73 ec                	jae    100c4e <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100c62:	41 80 fd 0a          	cmp    $0xa,%r13b
  100c66:	74 1e                	je     100c86 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100c68:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100c6c:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100c70:	45 0f b6 ed          	movzbl %r13b,%r13d
  100c74:	45 09 e5             	or     %r12d,%r13d
  100c77:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
  100c7b:	48 83 c4 08          	add    $0x8,%rsp
  100c7f:	5b                   	pop    %rbx
  100c80:	41 5c                	pop    %r12
  100c82:	41 5d                	pop    %r13
  100c84:	5d                   	pop    %rbp
  100c85:	c3                   	ret    
        int pos = (cell_ - console) % 80;
  100c86:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c8c:	48 89 c1             	mov    %rax,%rcx
  100c8f:	48 89 c6             	mov    %rax,%rsi
  100c92:	48 d1 fe             	sar    %rsi
  100c95:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100c9c:	66 66 66 
  100c9f:	48 89 f0             	mov    %rsi,%rax
  100ca2:	48 f7 ea             	imul   %rdx
  100ca5:	48 c1 fa 05          	sar    $0x5,%rdx
  100ca9:	48 89 c8             	mov    %rcx,%rax
  100cac:	48 c1 f8 3f          	sar    $0x3f,%rax
  100cb0:	48 29 c2             	sub    %rax,%rdx
  100cb3:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  100cb7:	48 c1 e2 04          	shl    $0x4,%rdx
  100cbb:	89 f0                	mov    %esi,%eax
  100cbd:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
  100cbf:	41 83 cc 20          	or     $0x20,%r12d
  100cc3:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100cc7:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  100ccb:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  100ccf:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
  100cd3:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100cd6:	83 f8 50             	cmp    $0x50,%eax
  100cd9:	75 e8                	jne    100cc3 <console_printer::putc(unsigned char, int)+0x9b>
  100cdb:	eb 9e                	jmp    100c7b <console_printer::putc(unsigned char, int)+0x53>
  100cdd:	90                   	nop

0000000000100cde <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100cde:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100ce2:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100ce6:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100cec:	48 d1 f8             	sar    %rax
  100cef:	89 05 07 83 fb ff    	mov    %eax,-0x47cf9(%rip)        # b8ffc <cursorpos>
}
  100cf5:	c3                   	ret    

0000000000100cf6 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100cf6:	f3 0f 1e fa          	endbr64 
  100cfa:	55                   	push   %rbp
  100cfb:	48 89 e5             	mov    %rsp,%rbp
  100cfe:	41 56                	push   %r14
  100d00:	41 55                	push   %r13
  100d02:	41 54                	push   %r12
  100d04:	53                   	push   %rbx
  100d05:	48 83 ec 20          	sub    $0x20,%rsp
  100d09:	89 fb                	mov    %edi,%ebx
  100d0b:	41 89 f4             	mov    %esi,%r12d
  100d0e:	49 89 d5             	mov    %rdx,%r13
  100d11:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100d14:	89 fa                	mov    %edi,%edx
  100d16:	c1 ea 1f             	shr    $0x1f,%edx
  100d19:	89 fe                	mov    %edi,%esi
  100d1b:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d1f:	e8 46 fe ff ff       	call   100b6a <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100d24:	4c 89 f1             	mov    %r14,%rcx
  100d27:	4c 89 ea             	mov    %r13,%rdx
  100d2a:	44 89 e6             	mov    %r12d,%esi
  100d2d:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d31:	e8 38 f6 ff ff       	call   10036e <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100d36:	85 db                	test   %ebx,%ebx
  100d38:	78 1a                	js     100d54 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100d3a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100d3e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100d44:	48 d1 f8             	sar    %rax
}
  100d47:	48 83 c4 20          	add    $0x20,%rsp
  100d4b:	5b                   	pop    %rbx
  100d4c:	41 5c                	pop    %r12
  100d4e:	41 5d                	pop    %r13
  100d50:	41 5e                	pop    %r14
  100d52:	5d                   	pop    %rbp
  100d53:	c3                   	ret    
        cp.move_cursor();
  100d54:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d58:	e8 81 ff ff ff       	call   100cde <console_printer::move_cursor()>
  100d5d:	eb db                	jmp    100d3a <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100d5f <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100d5f:	f3 0f 1e fa          	endbr64 
  100d63:	55                   	push   %rbp
  100d64:	48 89 e5             	mov    %rsp,%rbp
  100d67:	48 83 ec 50          	sub    $0x50,%rsp
  100d6b:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100d6f:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100d73:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100d77:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100d7e:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100d82:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100d86:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100d8a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100d8e:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100d92:	e8 5f ff ff ff       	call   100cf6 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100d97:	c9                   	leave  
  100d98:	c3                   	ret    

0000000000100d99 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100d99:	f3 0f 1e fa          	endbr64 
  100d9d:	55                   	push   %rbp
  100d9e:	48 89 e5             	mov    %rsp,%rbp
  100da1:	48 89 f9             	mov    %rdi,%rcx
  100da4:	41 89 f0             	mov    %esi,%r8d
  100da7:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100daa:	ba 90 15 10 00       	mov    $0x101590,%edx
  100daf:	be 00 c0 00 00       	mov    $0xc000,%esi
  100db4:	bf 30 07 00 00       	mov    $0x730,%edi
  100db9:	b0 00                	mov    $0x0,%al
  100dbb:	e8 9f ff ff ff       	call   100d5f <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100dc0:	b8 03 00 00 00       	mov    $0x3,%eax
    asm volatile ("syscall"
  100dc5:	bf 00 00 00 00       	mov    $0x0,%edi
  100dca:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100dcc:	eb fe                	jmp    100dcc <assert_fail(char const*, int, char const*)+0x33>
