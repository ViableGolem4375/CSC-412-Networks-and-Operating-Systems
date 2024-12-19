
obj/p-allocator2.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  100000:	f3 0f 1e fa          	endbr64 
  100004:	55                   	push   %rbp
  100005:	48 89 e5             	mov    %rsp,%rbp
  100008:	41 54                	push   %r12
  10000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
  100010:	0f 05                	syscall 
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
    return rax;
  100012:	49 89 c4             	mov    %rax,%r12


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  100015:	89 c3                	mov    %eax,%ebx
    pid_t p = sys_getpid();
    srand(p);
  100017:	89 c7                	mov    %eax,%edi
  100019:	e8 b4 01 00 00       	call   1001d2 <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  10001e:	b8 1b 30 10 00       	mov    $0x10301b,%eax

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  100023:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  100029:	48 89 05 d8 1f 00 00 	mov    %rax,0x1fd8(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  100030:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  100033:	48 83 e8 01          	sub    $0x1,%rax
  100037:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  10003d:	48 89 05 bc 1f 00 00 	mov    %rax,0x1fbc(%rip)        # 102000 <stack_bottom>
  100044:	eb 07                	jmp    10004d <process_main()+0x4d>
    register uintptr_t rax asm("rax") = syscallno;
  100046:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  10004b:	0f 05                	syscall 

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  10004d:	be 31 00 00 00       	mov    $0x31,%esi
  100052:	bf 00 00 00 00       	mov    $0x0,%edi
  100057:	e8 95 01 00 00       	call   1001f1 <rand(int, int)>
  10005c:	39 d8                	cmp    %ebx,%eax
  10005e:	7d e6                	jge    100046 <process_main()+0x46>
            if (heap_top == stack_bottom
  100060:	48 8b 3d a1 1f 00 00 	mov    0x1fa1(%rip),%rdi        # 102008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  100067:	48 3b 3d 92 1f 00 00 	cmp    0x1f92(%rip),%rdi        # 102000 <stack_bottom>
  10006e:	74 2a                	je     10009a <process_main()+0x9a>
    register uintptr_t rax asm("rax") = syscallno;
  100070:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
  100075:	0f 05                	syscall 
  100077:	85 c0                	test   %eax,%eax
  100079:	78 1f                	js     10009a <process_main()+0x9a>
                break;
            }
            *heap_top = p;               // check we can write to new page
  10007b:	48 8b 05 86 1f 00 00 	mov    0x1f86(%rip),%rax        # 102008 <heap_top>
  100082:	44 88 20             	mov    %r12b,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  100085:	66 44 89 25 11 8f fb 	mov    %r12w,-0x470ef(%rip)        # b8f9e <console+0xf9e>
  10008c:	ff 
            heap_top += PAGESIZE;
  10008d:	48 81 05 70 1f 00 00 	addq   $0x1000,0x1f70(%rip)        # 102008 <heap_top>
  100094:	00 10 00 00 
  100098:	eb ac                	jmp    100046 <process_main()+0x46>
    register uintptr_t rax asm("rax") = syscallno;
  10009a:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  10009f:	0f 05                	syscall 
    return rax;
  1000a1:	eb f7                	jmp    10009a <process_main()+0x9a>

00000000001000a3 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1000a3:	f3 0f 1e fa          	endbr64 
  1000a7:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1000aa:	48 39 fe             	cmp    %rdi,%rsi
  1000ad:	72 1d                	jb     1000cc <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  1000af:	b9 00 00 00 00       	mov    $0x0,%ecx
  1000b4:	48 85 d2             	test   %rdx,%rdx
  1000b7:	74 12                	je     1000cb <memmove+0x28>
            *d++ = *s++;
  1000b9:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  1000bd:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  1000c1:	48 83 c1 01          	add    $0x1,%rcx
  1000c5:	48 39 ca             	cmp    %rcx,%rdx
  1000c8:	75 ef                	jne    1000b9 <memmove+0x16>
        }
    }
    return dst;
}
  1000ca:	c3                   	ret    
  1000cb:	c3                   	ret    
    if (s < d && s + n > d) {
  1000cc:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  1000d0:	48 39 cf             	cmp    %rcx,%rdi
  1000d3:	73 da                	jae    1000af <memmove+0xc>
        while (n-- > 0) {
  1000d5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  1000d9:	48 85 d2             	test   %rdx,%rdx
  1000dc:	74 ec                	je     1000ca <memmove+0x27>
            *--d = *--s;
  1000de:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1000e2:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  1000e5:	48 83 e9 01          	sub    $0x1,%rcx
  1000e9:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1000ed:	75 ef                	jne    1000de <memmove+0x3b>
  1000ef:	c3                   	ret    

00000000001000f0 <memset>:

void* memset(void* v, int c, size_t n) {
  1000f0:	f3 0f 1e fa          	endbr64 
  1000f4:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1000f7:	48 85 d2             	test   %rdx,%rdx
  1000fa:	74 12                	je     10010e <memset+0x1e>
  1000fc:	48 01 fa             	add    %rdi,%rdx
  1000ff:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
  100102:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100105:	48 83 c1 01          	add    $0x1,%rcx
  100109:	48 39 ca             	cmp    %rcx,%rdx
  10010c:	75 f4                	jne    100102 <memset+0x12>
    }
    return v;
}
  10010e:	c3                   	ret    

000000000010010f <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  10010f:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  100113:	80 3f 00             	cmpb   $0x0,(%rdi)
  100116:	74 10                	je     100128 <strlen+0x19>
  100118:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  10011d:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  100121:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100125:	75 f6                	jne    10011d <strlen+0xe>
  100127:	c3                   	ret    
  100128:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  10012d:	c3                   	ret    

000000000010012e <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  10012e:	f3 0f 1e fa          	endbr64 
  100132:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100135:	ba 00 00 00 00       	mov    $0x0,%edx
  10013a:	48 85 f6             	test   %rsi,%rsi
  10013d:	74 11                	je     100150 <strnlen+0x22>
  10013f:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
  100143:	74 0c                	je     100151 <strnlen+0x23>
        ++n;
  100145:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100149:	48 39 d0             	cmp    %rdx,%rax
  10014c:	75 f1                	jne    10013f <strnlen+0x11>
  10014e:	eb 04                	jmp    100154 <strnlen+0x26>
  100150:	c3                   	ret    
  100151:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
  100154:	c3                   	ret    

0000000000100155 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  100155:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  100159:	0f b6 07             	movzbl (%rdi),%eax
  10015c:	84 c0                	test   %al,%al
  10015e:	74 10                	je     100170 <strchr+0x1b>
  100160:	40 38 f0             	cmp    %sil,%al
  100163:	74 18                	je     10017d <strchr+0x28>
        ++s;
  100165:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  100169:	0f b6 07             	movzbl (%rdi),%eax
  10016c:	84 c0                	test   %al,%al
  10016e:	75 f0                	jne    100160 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  100170:	40 84 f6             	test   %sil,%sil
  100173:	b8 00 00 00 00       	mov    $0x0,%eax
  100178:	48 0f 44 c7          	cmove  %rdi,%rax
    }
}
  10017c:	c3                   	ret    
  10017d:	48 89 f8             	mov    %rdi,%rax
  100180:	c3                   	ret    

0000000000100181 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  100181:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  100185:	83 3d 8c 1e 00 00 00 	cmpl   $0x0,0x1e8c(%rip)        # 102018 <rand_seed_set>
  10018c:	74 27                	je     1001b5 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  10018e:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  100195:	f4 51 58 
  100198:	48 0f af 05 70 1e 00 	imul   0x1e70(%rip),%rax        # 102010 <rand_seed>
  10019f:	00 
  1001a0:	48 83 c0 01          	add    $0x1,%rax
  1001a4:	48 89 05 65 1e 00 00 	mov    %rax,0x1e65(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1001ab:	48 c1 e8 20          	shr    $0x20,%rax
  1001af:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  1001b4:	c3                   	ret    

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  1001b5:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  1001bc:	87 d4 30 
  1001bf:	48 89 05 4a 1e 00 00 	mov    %rax,0x1e4a(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  1001c6:	c7 05 48 1e 00 00 01 	movl   $0x1,0x1e48(%rip)        # 102018 <rand_seed_set>
  1001cd:	00 00 00 
}
  1001d0:	eb bc                	jmp    10018e <rand()+0xd>

00000000001001d2 <srand(unsigned int)>:
void srand(unsigned seed) {
  1001d2:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  1001d6:	89 f8                	mov    %edi,%eax
  1001d8:	48 c1 e7 20          	shl    $0x20,%rdi
  1001dc:	48 09 c7             	or     %rax,%rdi
  1001df:	48 89 3d 2a 1e 00 00 	mov    %rdi,0x1e2a(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  1001e6:	c7 05 28 1e 00 00 01 	movl   $0x1,0x1e28(%rip)        # 102018 <rand_seed_set>
  1001ed:	00 00 00 
}
  1001f0:	c3                   	ret    

00000000001001f1 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  1001f1:	f3 0f 1e fa          	endbr64 
  1001f5:	55                   	push   %rbp
  1001f6:	48 89 e5             	mov    %rsp,%rbp
  1001f9:	41 54                	push   %r12
  1001fb:	53                   	push   %rbx
    assert(min <= max);
  1001fc:	39 f7                	cmp    %esi,%edi
  1001fe:	7f 26                	jg     100226 <rand(int, int)+0x35>
  100200:	41 89 fc             	mov    %edi,%r12d
  100203:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100205:	e8 77 ff ff ff       	call   100181 <rand()>
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10020a:	44 29 e3             	sub    %r12d,%ebx
  10020d:	83 c3 01             	add    $0x1,%ebx
  100210:	48 63 db             	movslq %ebx,%rbx
    unsigned long r = rand();
  100213:	48 98                	cltq   
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100215:	48 0f af d8          	imul   %rax,%rbx
  100219:	48 c1 eb 1f          	shr    $0x1f,%rbx
  10021d:	41 8d 04 1c          	lea    (%r12,%rbx,1),%eax
}
  100221:	5b                   	pop    %rbx
  100222:	41 5c                	pop    %r12
  100224:	5d                   	pop    %rbp
  100225:	c3                   	ret    
    assert(min <= max);
  100226:	ba a0 0c 10 00       	mov    $0x100ca0,%edx
  10022b:	be f2 00 00 00       	mov    $0xf2,%esi
  100230:	bf ab 0c 10 00       	mov    $0x100cab,%edi
  100235:	e8 2b 0a 00 00       	call   100c65 <assert_fail(char const*, int, char const*)>

000000000010023a <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  10023a:	f3 0f 1e fa          	endbr64 
  10023e:	55                   	push   %rbp
  10023f:	48 89 e5             	mov    %rsp,%rbp
  100242:	41 57                	push   %r15
  100244:	41 56                	push   %r14
  100246:	41 55                	push   %r13
  100248:	41 54                	push   %r12
  10024a:	53                   	push   %rbx
  10024b:	48 83 ec 58          	sub    $0x58,%rsp
  10024f:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  100253:	0f b6 02             	movzbl (%rdx),%eax
  100256:	84 c0                	test   %al,%al
  100258:	0f 84 c8 07 00 00    	je     100a26 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
  10025e:	49 89 fe             	mov    %rdi,%r14
  100261:	49 89 d4             	mov    %rdx,%r12
  100264:	41 89 f7             	mov    %esi,%r15d
  100267:	e9 89 05 00 00       	jmp    1007f5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5bb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  10026c:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  100271:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
  100277:	45 84 e4             	test   %r12b,%r12b
  10027a:	0f 84 87 07 00 00    	je     100a07 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cd>
        int flags = 0;
  100280:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  100286:	41 0f be f4          	movsbl %r12b,%esi
  10028a:	bf 90 13 10 00       	mov    $0x101390,%edi
  10028f:	e8 c1 fe ff ff       	call   100155 <strchr>
  100294:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  100297:	48 85 c0             	test   %rax,%rax
  10029a:	74 70                	je     10030c <printer::vprintf(int, char const*, __va_list_tag*)+0xd2>
                flags |= 1 << (flagc - flag_chars);
  10029c:	48 81 e9 90 13 10 00 	sub    $0x101390,%rcx
  1002a3:	b8 01 00 00 00       	mov    $0x1,%eax
  1002a8:	d3 e0                	shl    %cl,%eax
  1002aa:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1002ad:	48 83 c3 01          	add    $0x1,%rbx
  1002b1:	44 0f b6 23          	movzbl (%rbx),%r12d
  1002b5:	45 84 e4             	test   %r12b,%r12b
  1002b8:	75 cc                	jne    100286 <printer::vprintf(int, char const*, __va_list_tag*)+0x4c>
  1002ba:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
                break;
            }
        }

        // process width
        int width = -1;
  1002be:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1002c4:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,-0x64(%rbp)
        if (*format == '.') {
  1002cb:	80 3b 2e             	cmpb   $0x2e,(%rbx)
  1002ce:	0f 84 c7 00 00 00    	je     10039b <printer::vprintf(int, char const*, __va_list_tag*)+0x161>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  1002d4:	0f b6 03             	movzbl (%rbx),%eax
  1002d7:	3c 6c                	cmp    $0x6c,%al
  1002d9:	0f 84 4f 01 00 00    	je     10042e <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
  1002df:	0f 8f 3d 01 00 00    	jg     100422 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e8>
  1002e5:	3c 68                	cmp    $0x68,%al
  1002e7:	0f 85 60 01 00 00    	jne    10044d <printer::vprintf(int, char const*, __va_list_tag*)+0x213>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  1002ed:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  1002f1:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1002f5:	8d 50 bd             	lea    -0x43(%rax),%edx
  1002f8:	80 fa 35             	cmp    $0x35,%dl
  1002fb:	0f 87 ac 05 00 00    	ja     1008ad <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
  100301:	0f b6 d2             	movzbl %dl,%edx
  100304:	3e ff 24 d5 d0 0c 10 	notrack jmp *0x100cd0(,%rdx,8)
  10030b:	00 
        if (*format >= '1' && *format <= '9') {
  10030c:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
  100310:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
  100315:	3c 08                	cmp    $0x8,%al
  100317:	77 32                	ja     10034b <printer::vprintf(int, char const*, __va_list_tag*)+0x111>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100319:	0f b6 03             	movzbl (%rbx),%eax
  10031c:	8d 50 d0             	lea    -0x30(%rax),%edx
  10031f:	80 fa 09             	cmp    $0x9,%dl
  100322:	77 61                	ja     100385 <printer::vprintf(int, char const*, __va_list_tag*)+0x14b>
  100324:	41 bd 00 00 00 00    	mov    $0x0,%r13d
                width = 10 * width + *format++ - '0';
  10032a:	48 83 c3 01          	add    $0x1,%rbx
  10032e:	43 8d 54 ad 00       	lea    0x0(%r13,%r13,4),%edx
  100333:	0f be c0             	movsbl %al,%eax
  100336:	44 8d 6c 50 d0       	lea    -0x30(%rax,%rdx,2),%r13d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10033b:	0f b6 03             	movzbl (%rbx),%eax
  10033e:	8d 50 d0             	lea    -0x30(%rax),%edx
  100341:	80 fa 09             	cmp    $0x9,%dl
  100344:	76 e4                	jbe    10032a <printer::vprintf(int, char const*, __va_list_tag*)+0xf0>
  100346:	e9 79 ff ff ff       	jmp    1002c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        } else if (*format == '*') {
  10034b:	41 80 fc 2a          	cmp    $0x2a,%r12b
  10034f:	75 3f                	jne    100390 <printer::vprintf(int, char const*, __va_list_tag*)+0x156>
            width = va_arg(val, int);
  100351:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100355:	8b 01                	mov    (%rcx),%eax
  100357:	83 f8 2f             	cmp    $0x2f,%eax
  10035a:	77 17                	ja     100373 <printer::vprintf(int, char const*, __va_list_tag*)+0x139>
  10035c:	89 c2                	mov    %eax,%edx
  10035e:	48 03 51 10          	add    0x10(%rcx),%rdx
  100362:	83 c0 08             	add    $0x8,%eax
  100365:	89 01                	mov    %eax,(%rcx)
  100367:	44 8b 2a             	mov    (%rdx),%r13d
            ++format;
  10036a:	48 83 c3 01          	add    $0x1,%rbx
  10036e:	e9 51 ff ff ff       	jmp    1002c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            width = va_arg(val, int);
  100373:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100377:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  10037b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10037f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100383:	eb e2                	jmp    100367 <printer::vprintf(int, char const*, __va_list_tag*)+0x12d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100385:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  10038b:	e9 34 ff ff ff       	jmp    1002c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        int width = -1;
  100390:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  100396:	e9 29 ff ff ff       	jmp    1002c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            ++format;
  10039b:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
  10039f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1003a3:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1003a6:	80 f9 09             	cmp    $0x9,%cl
  1003a9:	76 13                	jbe    1003be <printer::vprintf(int, char const*, __va_list_tag*)+0x184>
            } else if (*format == '*') {
  1003ab:	3c 2a                	cmp    $0x2a,%al
  1003ad:	74 33                	je     1003e2 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a8>
            ++format;
  1003af:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
  1003b2:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
  1003b9:	e9 16 ff ff ff       	jmp    1002d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1003be:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
  1003c3:	48 83 c2 01          	add    $0x1,%rdx
  1003c7:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  1003ca:	0f be c0             	movsbl %al,%eax
  1003cd:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1003d1:	0f b6 02             	movzbl (%rdx),%eax
  1003d4:	8d 70 d0             	lea    -0x30(%rax),%esi
  1003d7:	40 80 fe 09          	cmp    $0x9,%sil
  1003db:	76 e6                	jbe    1003c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x189>
                    precision = 10 * precision + *format++ - '0';
  1003dd:	48 89 d3             	mov    %rdx,%rbx
  1003e0:	eb 1c                	jmp    1003fe <printer::vprintf(int, char const*, __va_list_tag*)+0x1c4>
                precision = va_arg(val, int);
  1003e2:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1003e6:	8b 01                	mov    (%rcx),%eax
  1003e8:	83 f8 2f             	cmp    $0x2f,%eax
  1003eb:	77 23                	ja     100410 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d6>
  1003ed:	89 c2                	mov    %eax,%edx
  1003ef:	48 03 51 10          	add    0x10(%rcx),%rdx
  1003f3:	83 c0 08             	add    $0x8,%eax
  1003f6:	89 01                	mov    %eax,(%rcx)
  1003f8:	8b 0a                	mov    (%rdx),%ecx
                ++format;
  1003fa:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
  1003fe:	85 c9                	test   %ecx,%ecx
  100400:	b8 00 00 00 00       	mov    $0x0,%eax
  100405:	0f 49 c1             	cmovns %ecx,%eax
  100408:	89 45 9c             	mov    %eax,-0x64(%rbp)
  10040b:	e9 c4 fe ff ff       	jmp    1002d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                precision = va_arg(val, int);
  100410:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100414:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100418:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10041c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100420:	eb d6                	jmp    1003f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x1be>
        switch (*format) {
  100422:	3c 74                	cmp    $0x74,%al
  100424:	74 08                	je     10042e <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
  100426:	3c 7a                	cmp    $0x7a,%al
  100428:	0f 85 e5 05 00 00    	jne    100a13 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d9>
            ++format;
  10042e:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        switch (*format) {
  100432:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100436:	8d 50 bd             	lea    -0x43(%rax),%edx
  100439:	80 fa 35             	cmp    $0x35,%dl
  10043c:	0f 87 6b 04 00 00    	ja     1008ad <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
  100442:	0f b6 d2             	movzbl %dl,%edx
  100445:	3e ff 24 d5 80 0e 10 	notrack jmp *0x100e80(,%rdx,8)
  10044c:	00 
  10044d:	8d 50 bd             	lea    -0x43(%rax),%edx
  100450:	80 fa 35             	cmp    $0x35,%dl
  100453:	0f 87 51 04 00 00    	ja     1008aa <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  100459:	0f b6 d2             	movzbl %dl,%edx
  10045c:	3e ff 24 d5 30 10 10 	notrack jmp *0x101030(,%rdx,8)
  100463:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100464:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100468:	8b 07                	mov    (%rdi),%eax
  10046a:	83 f8 2f             	cmp    $0x2f,%eax
  10046d:	77 3b                	ja     1004aa <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
  10046f:	89 c2                	mov    %eax,%edx
  100471:	48 03 57 10          	add    0x10(%rdi),%rdx
  100475:	83 c0 08             	add    $0x8,%eax
  100478:	89 07                	mov    %eax,(%rdi)
  10047a:	48 8b 12             	mov    (%rdx),%rdx
  10047d:	48 89 cb             	mov    %rcx,%rbx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  100480:	48 89 d0             	mov    %rdx,%rax
  100483:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  100487:	49 89 d0             	mov    %rdx,%r8
  10048a:	49 f7 d8             	neg    %r8
  10048d:	25 80 00 00 00       	and    $0x80,%eax
  100492:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  100496:	0b 45 a8             	or     -0x58(%rbp),%eax
  100499:	83 c8 60             	or     $0x60,%eax
  10049c:	89 45 a8             	mov    %eax,-0x58(%rbp)
        const char* data = "";
  10049f:	41 bc ba 0c 10 00    	mov    $0x100cba,%r12d
            break;
  1004a5:	e9 c9 01 00 00       	jmp    100673 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1004aa:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004ae:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1004b2:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004b6:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1004ba:	eb be                	jmp    10047a <printer::vprintf(int, char const*, __va_list_tag*)+0x240>
        switch (*format) {
  1004bc:	48 89 cb             	mov    %rcx,%rbx
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1004bf:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004c3:	8b 01                	mov    (%rcx),%eax
  1004c5:	83 f8 2f             	cmp    $0x2f,%eax
  1004c8:	77 10                	ja     1004da <printer::vprintf(int, char const*, __va_list_tag*)+0x2a0>
  1004ca:	89 c2                	mov    %eax,%edx
  1004cc:	48 03 51 10          	add    0x10(%rcx),%rdx
  1004d0:	83 c0 08             	add    $0x8,%eax
  1004d3:	89 01                	mov    %eax,(%rcx)
  1004d5:	48 63 12             	movslq (%rdx),%rdx
  1004d8:	eb a6                	jmp    100480 <printer::vprintf(int, char const*, __va_list_tag*)+0x246>
  1004da:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004de:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1004e2:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004e6:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1004ea:	eb e9                	jmp    1004d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x29b>
        switch (*format) {
  1004ec:	48 89 cb             	mov    %rcx,%rbx
  1004ef:	b8 01 00 00 00       	mov    $0x1,%eax
  1004f4:	be 0a 00 00 00       	mov    $0xa,%esi
  1004f9:	e9 a8 00 00 00       	jmp    1005a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  1004fe:	48 89 cb             	mov    %rcx,%rbx
  100501:	b8 00 00 00 00       	mov    $0x0,%eax
  100506:	be 0a 00 00 00       	mov    $0xa,%esi
  10050b:	e9 96 00 00 00       	jmp    1005a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  100510:	b8 00 00 00 00       	mov    $0x0,%eax
  100515:	be 0a 00 00 00       	mov    $0xa,%esi
  10051a:	e9 87 00 00 00       	jmp    1005a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  10051f:	b8 00 00 00 00       	mov    $0x0,%eax
  100524:	be 0a 00 00 00       	mov    $0xa,%esi
  100529:	eb 7b                	jmp    1005a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        }
        case 'u':
        format_unsigned:
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10052b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10052f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100533:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100537:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10053b:	e9 84 00 00 00       	jmp    1005c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x38a>
  100540:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100544:	8b 07                	mov    (%rdi),%eax
  100546:	83 f8 2f             	cmp    $0x2f,%eax
  100549:	77 10                	ja     10055b <printer::vprintf(int, char const*, __va_list_tag*)+0x321>
  10054b:	89 c2                	mov    %eax,%edx
  10054d:	48 03 57 10          	add    0x10(%rdi),%rdx
  100551:	83 c0 08             	add    $0x8,%eax
  100554:	89 07                	mov    %eax,(%rdi)
  100556:	44 8b 02             	mov    (%rdx),%r8d
  100559:	eb 6c                	jmp    1005c7 <printer::vprintf(int, char const*, __va_list_tag*)+0x38d>
  10055b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10055f:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100563:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100567:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10056b:	eb e9                	jmp    100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x31c>
  10056d:	41 89 f1             	mov    %esi,%r9d
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  100570:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
    const char* digits = upper_digits;
  100577:	bf c0 13 10 00       	mov    $0x1013c0,%edi
  10057c:	e9 5f 03 00 00       	jmp    1008e0 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
  100581:	48 89 cb             	mov    %rcx,%rbx
  100584:	b8 01 00 00 00       	mov    $0x1,%eax
  100589:	eb 16                	jmp    1005a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  10058b:	48 89 cb             	mov    %rcx,%rbx
  10058e:	b8 00 00 00 00       	mov    $0x0,%eax
  100593:	eb 0c                	jmp    1005a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  100595:	b8 00 00 00 00       	mov    $0x0,%eax
  10059a:	eb 05                	jmp    1005a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  10059c:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  1005a1:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1005a6:	85 c0                	test   %eax,%eax
  1005a8:	74 96                	je     100540 <printer::vprintf(int, char const*, __va_list_tag*)+0x306>
  1005aa:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1005ae:	8b 07                	mov    (%rdi),%eax
  1005b0:	83 f8 2f             	cmp    $0x2f,%eax
  1005b3:	0f 87 72 ff ff ff    	ja     10052b <printer::vprintf(int, char const*, __va_list_tag*)+0x2f1>
  1005b9:	89 c2                	mov    %eax,%edx
  1005bb:	48 03 57 10          	add    0x10(%rdi),%rdx
  1005bf:	83 c0 08             	add    $0x8,%eax
  1005c2:	89 07                	mov    %eax,(%rdi)
  1005c4:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  1005c7:	83 4d a8 20          	orl    $0x20,-0x58(%rbp)
    if (base < 0) {
  1005cb:	85 f6                	test   %esi,%esi
  1005cd:	79 9e                	jns    10056d <printer::vprintf(int, char const*, __va_list_tag*)+0x333>
        base = -base;
  1005cf:	41 89 f1             	mov    %esi,%r9d
  1005d2:	f7 de                	neg    %esi
  1005d4:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
        digits = lower_digits;
  1005db:	bf a0 13 10 00       	mov    $0x1013a0,%edi
  1005e0:	e9 fb 02 00 00       	jmp    1008e0 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
  1005e5:	48 89 cb             	mov    %rcx,%rbx
  1005e8:	b8 01 00 00 00       	mov    $0x1,%eax
  1005ed:	eb 16                	jmp    100605 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  1005ef:	48 89 cb             	mov    %rcx,%rbx
  1005f2:	b8 00 00 00 00       	mov    $0x0,%eax
  1005f7:	eb 0c                	jmp    100605 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  1005f9:	b8 00 00 00 00       	mov    $0x0,%eax
  1005fe:	eb 05                	jmp    100605 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  100600:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  100605:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  10060a:	eb 9a                	jmp    1005a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        switch (*format) {
  10060c:	48 89 cb             	mov    %rcx,%rbx
            num = (uintptr_t) va_arg(val, void*);
  10060f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100613:	8b 01                	mov    (%rcx),%eax
  100615:	83 f8 2f             	cmp    $0x2f,%eax
  100618:	77 21                	ja     10063b <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
  10061a:	89 c2                	mov    %eax,%edx
  10061c:	48 03 51 10          	add    0x10(%rcx),%rdx
  100620:	83 c0 08             	add    $0x8,%eax
  100623:	89 01                	mov    %eax,(%rcx)
  100625:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  100628:	81 4d a8 21 01 00 00 	orl    $0x121,-0x58(%rbp)
            base = -16;
  10062f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100634:	eb 99                	jmp    1005cf <printer::vprintf(int, char const*, __va_list_tag*)+0x395>
        switch (*format) {
  100636:	48 89 cb             	mov    %rcx,%rbx
  100639:	eb d4                	jmp    10060f <printer::vprintf(int, char const*, __va_list_tag*)+0x3d5>
            num = (uintptr_t) va_arg(val, void*);
  10063b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10063f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100643:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100647:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10064b:	eb d8                	jmp    100625 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
        switch (*format) {
  10064d:	48 89 cb             	mov    %rcx,%rbx
            data = va_arg(val, char*);
  100650:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100654:	8b 07                	mov    (%rdi),%eax
  100656:	83 f8 2f             	cmp    $0x2f,%eax
  100659:	0f 87 b9 01 00 00    	ja     100818 <printer::vprintf(int, char const*, __va_list_tag*)+0x5de>
  10065f:	89 c2                	mov    %eax,%edx
  100661:	48 03 57 10          	add    0x10(%rdi),%rdx
  100665:	83 c0 08             	add    $0x8,%eax
  100668:	89 07                	mov    %eax,(%rdi)
  10066a:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
  10066d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
        if (flags & FLAG_NUMERIC) {
  100673:	8b 45 a8             	mov    -0x58(%rbp),%eax
  100676:	83 e0 20             	and    $0x20,%eax
  100679:	89 45 8c             	mov    %eax,-0x74(%rbp)
  10067c:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  100682:	0f 85 48 02 00 00    	jne    1008d0 <printer::vprintf(int, char const*, __va_list_tag*)+0x696>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  100688:	8b 45 a8             	mov    -0x58(%rbp),%eax
  10068b:	89 45 88             	mov    %eax,-0x78(%rbp)
  10068e:	83 e0 60             	and    $0x60,%eax
  100691:	83 f8 60             	cmp    $0x60,%eax
  100694:	0f 84 7b 02 00 00    	je     100915 <printer::vprintf(int, char const*, __va_list_tag*)+0x6db>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  10069a:	8b 45 a8             	mov    -0x58(%rbp),%eax
  10069d:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1006a0:	48 c7 45 a0 ba 0c 10 	movq   $0x100cba,-0x60(%rbp)
  1006a7:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1006a8:	83 f8 21             	cmp    $0x21,%eax
  1006ab:	0f 84 a0 02 00 00    	je     100951 <printer::vprintf(int, char const*, __va_list_tag*)+0x717>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1006b1:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
  1006b4:	89 c8                	mov    %ecx,%eax
  1006b6:	f7 d0                	not    %eax
  1006b8:	c1 e8 1f             	shr    $0x1f,%eax
  1006bb:	89 45 84             	mov    %eax,-0x7c(%rbp)
  1006be:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
  1006c2:	0f 85 c5 02 00 00    	jne    10098d <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
  1006c8:	84 c0                	test   %al,%al
  1006ca:	0f 84 bd 02 00 00    	je     10098d <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
            datalen = strnlen(data, precision);
  1006d0:	48 63 f1             	movslq %ecx,%rsi
  1006d3:	4c 89 e7             	mov    %r12,%rdi
  1006d6:	e8 53 fa ff ff       	call   10012e <strnlen>
  1006db:	89 45 98             	mov    %eax,-0x68(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  1006de:	8b 45 88             	mov    -0x78(%rbp),%eax
  1006e1:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  1006e4:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1006eb:	83 f8 22             	cmp    $0x22,%eax
  1006ee:	0f 84 d1 02 00 00    	je     1009c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x78b>
        }

        width -= datalen + zeros + strlen(prefix);
  1006f4:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  1006f8:	e8 12 fa ff ff       	call   10010f <strlen>
  1006fd:	8b 55 9c             	mov    -0x64(%rbp),%edx
  100700:	03 55 98             	add    -0x68(%rbp),%edx
  100703:	44 89 e9             	mov    %r13d,%ecx
  100706:	29 d1                	sub    %edx,%ecx
  100708:	29 c1                	sub    %eax,%ecx
  10070a:	89 4d 8c             	mov    %ecx,-0x74(%rbp)
  10070d:	41 89 cd             	mov    %ecx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100710:	f6 45 a8 04          	testb  $0x4,-0x58(%rbp)
  100714:	75 2f                	jne    100745 <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
  100716:	85 c9                	test   %ecx,%ecx
  100718:	7e 2b                	jle    100745 <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
            putc(' ', color);
  10071a:	49 8b 06             	mov    (%r14),%rax
  10071d:	44 89 fa             	mov    %r15d,%edx
  100720:	be 20 00 00 00       	mov    $0x20,%esi
  100725:	4c 89 f7             	mov    %r14,%rdi
  100728:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10072a:	41 83 ed 01          	sub    $0x1,%r13d
  10072e:	45 85 ed             	test   %r13d,%r13d
  100731:	7f e7                	jg     10071a <printer::vprintf(int, char const*, __va_list_tag*)+0x4e0>
  100733:	8b 7d 8c             	mov    -0x74(%rbp),%edi
  100736:	85 ff                	test   %edi,%edi
  100738:	b8 01 00 00 00       	mov    $0x1,%eax
  10073d:	0f 4f c7             	cmovg  %edi,%eax
  100740:	29 c7                	sub    %eax,%edi
  100742:	41 89 fd             	mov    %edi,%r13d
        }
        for (; *prefix; ++prefix) {
  100745:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  100749:	0f b6 07             	movzbl (%rdi),%eax
  10074c:	84 c0                	test   %al,%al
  10074e:	74 24                	je     100774 <printer::vprintf(int, char const*, __va_list_tag*)+0x53a>
  100750:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100754:	48 89 fb             	mov    %rdi,%rbx
            putc(*prefix, color);
  100757:	0f b6 f0             	movzbl %al,%esi
  10075a:	49 8b 06             	mov    (%r14),%rax
  10075d:	44 89 fa             	mov    %r15d,%edx
  100760:	4c 89 f7             	mov    %r14,%rdi
  100763:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
  100765:	48 83 c3 01          	add    $0x1,%rbx
  100769:	0f b6 03             	movzbl (%rbx),%eax
  10076c:	84 c0                	test   %al,%al
  10076e:	75 e7                	jne    100757 <printer::vprintf(int, char const*, __va_list_tag*)+0x51d>
  100770:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; zeros > 0; --zeros) {
  100774:	8b 45 9c             	mov    -0x64(%rbp),%eax
  100777:	85 c0                	test   %eax,%eax
  100779:	7e 1f                	jle    10079a <printer::vprintf(int, char const*, __va_list_tag*)+0x560>
  10077b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10077f:	89 c3                	mov    %eax,%ebx
            putc('0', color);
  100781:	49 8b 06             	mov    (%r14),%rax
  100784:	44 89 fa             	mov    %r15d,%edx
  100787:	be 30 00 00 00       	mov    $0x30,%esi
  10078c:	4c 89 f7             	mov    %r14,%rdi
  10078f:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
  100791:	83 eb 01             	sub    $0x1,%ebx
  100794:	75 eb                	jne    100781 <printer::vprintf(int, char const*, __va_list_tag*)+0x547>
  100796:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; datalen > 0; ++data, --datalen) {
  10079a:	8b 45 98             	mov    -0x68(%rbp),%eax
  10079d:	85 c0                	test   %eax,%eax
  10079f:	7e 29                	jle    1007ca <printer::vprintf(int, char const*, __va_list_tag*)+0x590>
  1007a1:	89 c0                	mov    %eax,%eax
  1007a3:	4c 01 e0             	add    %r12,%rax
  1007a6:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1007aa:	48 89 c3             	mov    %rax,%rbx
            putc(*data, color);
  1007ad:	41 0f b6 34 24       	movzbl (%r12),%esi
  1007b2:	49 8b 06             	mov    (%r14),%rax
  1007b5:	44 89 fa             	mov    %r15d,%edx
  1007b8:	4c 89 f7             	mov    %r14,%rdi
  1007bb:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1007bd:	49 83 c4 01          	add    $0x1,%r12
  1007c1:	49 39 dc             	cmp    %rbx,%r12
  1007c4:	75 e7                	jne    1007ad <printer::vprintf(int, char const*, __va_list_tag*)+0x573>
  1007c6:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; width > 0; --width) {
  1007ca:	45 85 ed             	test   %r13d,%r13d
  1007cd:	7e 16                	jle    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
            putc(' ', color);
  1007cf:	49 8b 06             	mov    (%r14),%rax
  1007d2:	44 89 fa             	mov    %r15d,%edx
  1007d5:	be 20 00 00 00       	mov    $0x20,%esi
  1007da:	4c 89 f7             	mov    %r14,%rdi
  1007dd:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
  1007df:	41 83 ed 01          	sub    $0x1,%r13d
  1007e3:	75 ea                	jne    1007cf <printer::vprintf(int, char const*, __va_list_tag*)+0x595>
    for (; *format; ++format) {
  1007e5:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  1007e9:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1007ed:	84 c0                	test   %al,%al
  1007ef:	0f 84 31 02 00 00    	je     100a26 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
        if (*format != '%') {
  1007f5:	3c 25                	cmp    $0x25,%al
  1007f7:	0f 84 6f fa ff ff    	je     10026c <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  1007fd:	0f b6 f0             	movzbl %al,%esi
  100800:	49 8b 06             	mov    (%r14),%rax
  100803:	44 89 fa             	mov    %r15d,%edx
  100806:	4c 89 f7             	mov    %r14,%rdi
  100809:	ff 10                	call   *(%rax)
            continue;
  10080b:	4c 89 e3             	mov    %r12,%rbx
  10080e:	eb d5                	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
  100810:	48 89 cb             	mov    %rcx,%rbx
  100813:	e9 38 fe ff ff       	jmp    100650 <printer::vprintf(int, char const*, __va_list_tag*)+0x416>
            data = va_arg(val, char*);
  100818:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10081c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100820:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100824:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100828:	e9 3d fe ff ff       	jmp    10066a <printer::vprintf(int, char const*, __va_list_tag*)+0x430>
        switch (*format) {
  10082d:	48 89 cb             	mov    %rcx,%rbx
            color = va_arg(val, int);
  100830:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100834:	8b 01                	mov    (%rcx),%eax
  100836:	83 f8 2f             	cmp    $0x2f,%eax
  100839:	77 15                	ja     100850 <printer::vprintf(int, char const*, __va_list_tag*)+0x616>
  10083b:	89 c2                	mov    %eax,%edx
  10083d:	48 03 51 10          	add    0x10(%rcx),%rdx
  100841:	83 c0 08             	add    $0x8,%eax
  100844:	89 01                	mov    %eax,(%rcx)
  100846:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  100849:	eb 9a                	jmp    1007e5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
  10084b:	48 89 cb             	mov    %rcx,%rbx
  10084e:	eb e0                	jmp    100830 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f6>
            color = va_arg(val, int);
  100850:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100854:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100858:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10085c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100860:	eb e4                	jmp    100846 <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
        switch (*format) {
  100862:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = va_arg(val, int);
  100865:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100869:	8b 07                	mov    (%rdi),%eax
  10086b:	83 f8 2f             	cmp    $0x2f,%eax
  10086e:	77 28                	ja     100898 <printer::vprintf(int, char const*, __va_list_tag*)+0x65e>
  100870:	89 c2                	mov    %eax,%edx
  100872:	48 03 57 10          	add    0x10(%rdi),%rdx
  100876:	83 c0 08             	add    $0x8,%eax
  100879:	89 07                	mov    %eax,(%rdi)
  10087b:	8b 02                	mov    (%rdx),%eax
  10087d:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100880:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100884:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  100888:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  10088e:	e9 e0 fd ff ff       	jmp    100673 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        switch (*format) {
  100893:	48 89 cb             	mov    %rcx,%rbx
  100896:	eb cd                	jmp    100865 <printer::vprintf(int, char const*, __va_list_tag*)+0x62b>
            numbuf[0] = va_arg(val, int);
  100898:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10089c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1008a0:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008a4:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1008a8:	eb d1                	jmp    10087b <printer::vprintf(int, char const*, __va_list_tag*)+0x641>
        switch (*format) {
  1008aa:	48 89 d9             	mov    %rbx,%rcx
            numbuf[0] = (*format ? *format : '%');
  1008ad:	84 c0                	test   %al,%al
  1008af:	0f 85 39 01 00 00    	jne    1009ee <printer::vprintf(int, char const*, __va_list_tag*)+0x7b4>
  1008b5:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1008b9:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1008bd:	48 8d 59 ff          	lea    -0x1(%rcx),%rbx
            data = numbuf;
  1008c1:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  1008c5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1008cb:	e9 a3 fd ff ff       	jmp    100673 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        if (flags & FLAG_NUMERIC) {
  1008d0:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  1008d6:	bf c0 13 10 00       	mov    $0x1013c0,%edi
        if (flags & FLAG_NUMERIC) {
  1008db:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  1008e0:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  1008e4:	4c 89 c1             	mov    %r8,%rcx
  1008e7:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
  1008eb:	48 63 f6             	movslq %esi,%rsi
  1008ee:	49 83 ec 01          	sub    $0x1,%r12
  1008f2:	48 89 c8             	mov    %rcx,%rax
  1008f5:	ba 00 00 00 00       	mov    $0x0,%edx
  1008fa:	48 f7 f6             	div    %rsi
  1008fd:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100901:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
  100905:	48 89 ca             	mov    %rcx,%rdx
  100908:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  10090b:	48 39 d6             	cmp    %rdx,%rsi
  10090e:	76 de                	jbe    1008ee <printer::vprintf(int, char const*, __va_list_tag*)+0x6b4>
  100910:	e9 73 fd ff ff       	jmp    100688 <printer::vprintf(int, char const*, __va_list_tag*)+0x44e>
                prefix = "-";
  100915:	48 c7 45 a0 b7 0c 10 	movq   $0x100cb7,-0x60(%rbp)
  10091c:	00 
            if (flags & FLAG_NEGATIVE) {
  10091d:	8b 45 a8             	mov    -0x58(%rbp),%eax
  100920:	a8 80                	test   $0x80,%al
  100922:	0f 85 89 fd ff ff    	jne    1006b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = "+";
  100928:	48 c7 45 a0 b2 0c 10 	movq   $0x100cb2,-0x60(%rbp)
  10092f:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  100930:	a8 10                	test   $0x10,%al
  100932:	0f 85 79 fd ff ff    	jne    1006b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = " ";
  100938:	a8 08                	test   $0x8,%al
  10093a:	ba ba 0c 10 00       	mov    $0x100cba,%edx
  10093f:	b8 b9 0c 10 00       	mov    $0x100cb9,%eax
  100944:	48 0f 44 c2          	cmove  %rdx,%rax
  100948:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  10094c:	e9 60 fd ff ff       	jmp    1006b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (base == 16 || base == -16)
  100951:	41 8d 41 10          	lea    0x10(%r9),%eax
  100955:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  10095a:	0f 85 51 fd ff ff    	jne    1006b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (num || (flags & FLAG_ALT2))) {
  100960:	4d 85 c0             	test   %r8,%r8
  100963:	75 0d                	jne    100972 <printer::vprintf(int, char const*, __va_list_tag*)+0x738>
  100965:	f7 45 a8 00 01 00 00 	testl  $0x100,-0x58(%rbp)
  10096c:	0f 84 3f fd ff ff    	je     1006b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            prefix = (base == -16 ? "0x" : "0X");
  100972:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100976:	ba bb 0c 10 00       	mov    $0x100cbb,%edx
  10097b:	b8 b4 0c 10 00       	mov    $0x100cb4,%eax
  100980:	48 0f 44 c2          	cmove  %rdx,%rax
  100984:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  100988:	e9 24 fd ff ff       	jmp    1006b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            datalen = strlen(data);
  10098d:	4c 89 e7             	mov    %r12,%rdi
  100990:	e8 7a f7 ff ff       	call   10010f <strlen>
  100995:	89 45 98             	mov    %eax,-0x68(%rbp)
            && precision >= 0) {
  100998:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
  10099c:	0f 84 3c fd ff ff    	je     1006de <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
  1009a2:	80 7d 84 00          	cmpb   $0x0,-0x7c(%rbp)
  1009a6:	0f 84 32 fd ff ff    	je     1006de <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
            zeros = precision > datalen ? precision - datalen : 0;
  1009ac:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  1009af:	89 fa                	mov    %edi,%edx
  1009b1:	29 c2                	sub    %eax,%edx
  1009b3:	39 c7                	cmp    %eax,%edi
  1009b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1009ba:	0f 4f c2             	cmovg  %edx,%eax
  1009bd:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1009c0:	e9 2f fd ff ff       	jmp    1006f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
                   && datalen + (int) strlen(prefix) < width) {
  1009c5:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  1009c9:	e8 41 f7 ff ff       	call   10010f <strlen>
  1009ce:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1009d1:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  1009d4:	44 89 e9             	mov    %r13d,%ecx
  1009d7:	29 f9                	sub    %edi,%ecx
  1009d9:	29 c1                	sub    %eax,%ecx
  1009db:	44 39 ea             	cmp    %r13d,%edx
  1009de:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e3:	0f 4c c1             	cmovl  %ecx,%eax
  1009e6:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1009e9:	e9 06 fd ff ff       	jmp    1006f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
  1009ee:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = (*format ? *format : '%');
  1009f1:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1009f4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1009f8:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  1009fc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100a02:	e9 6c fc ff ff       	jmp    100673 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        int flags = 0;
  100a07:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  100a0e:	e9 ab f8 ff ff       	jmp    1002be <printer::vprintf(int, char const*, __va_list_tag*)+0x84>
        switch (*format) {
  100a13:	8d 50 bd             	lea    -0x43(%rax),%edx
  100a16:	80 fa 35             	cmp    $0x35,%dl
  100a19:	77 d6                	ja     1009f1 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b7>
  100a1b:	0f b6 d2             	movzbl %dl,%edx
  100a1e:	3e ff 24 d5 e0 11 10 	notrack jmp *0x1011e0(,%rdx,8)
  100a25:	00 
        }
    }
}
  100a26:	48 83 c4 58          	add    $0x58,%rsp
  100a2a:	5b                   	pop    %rbx
  100a2b:	41 5c                	pop    %r12
  100a2d:	41 5d                	pop    %r13
  100a2f:	41 5e                	pop    %r14
  100a31:	41 5f                	pop    %r15
  100a33:	5d                   	pop    %rbp
  100a34:	c3                   	ret    
  100a35:	90                   	nop

0000000000100a36 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100a36:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100a3a:	48 c7 07 48 14 10 00 	movq   $0x101448,(%rdi)
  100a41:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100a48:	00 
  100a49:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100a4c:	85 f6                	test   %esi,%esi
  100a4e:	78 18                	js     100a68 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100a50:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100a56:	7f 0f                	jg     100a67 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100a58:	48 63 f6             	movslq %esi,%rsi
  100a5b:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100a62:	00 
  100a63:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100a67:	c3                   	ret    
        cell_ += cursorpos;
  100a68:	8b 05 8e 85 fb ff    	mov    -0x47a72(%rip),%eax        # b8ffc <cursorpos>
  100a6e:	48 98                	cltq   
  100a70:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100a77:	00 
  100a78:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100a7c:	c3                   	ret    
  100a7d:	90                   	nop

0000000000100a7e <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100a7e:	f3 0f 1e fa          	endbr64 
  100a82:	55                   	push   %rbp
  100a83:	48 89 e5             	mov    %rsp,%rbp
  100a86:	53                   	push   %rbx
  100a87:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100a8b:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100a92:	00 
  100a93:	72 18                	jb     100aad <console_printer::scroll()+0x2f>
  100a95:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100a98:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  100a9d:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100aa1:	75 1e                	jne    100ac1 <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
  100aa3:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
  100aa7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  100aab:	c9                   	leave  
  100aac:	c3                   	ret    
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100aad:	ba d8 13 10 00       	mov    $0x1013d8,%edx
  100ab2:	be 1f 02 00 00       	mov    $0x21f,%esi
  100ab7:	bf ab 0c 10 00       	mov    $0x100cab,%edi
  100abc:	e8 a4 01 00 00       	call   100c65 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100ac1:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100ac6:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100acb:	48 89 c7             	mov    %rax,%rdi
  100ace:	e8 d0 f5 ff ff       	call   1000a3 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100ad3:	ba a0 00 00 00       	mov    $0xa0,%edx
  100ad8:	be 00 00 00 00       	mov    $0x0,%esi
  100add:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100ae2:	e8 09 f6 ff ff       	call   1000f0 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100ae7:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100aeb:	48 2d a0 00 00 00    	sub    $0xa0,%rax
  100af1:	eb b0                	jmp    100aa3 <console_printer::scroll()+0x25>
  100af3:	90                   	nop

0000000000100af4 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100af4:	f3 0f 1e fa          	endbr64 
  100af8:	55                   	push   %rbp
  100af9:	48 89 e5             	mov    %rsp,%rbp
  100afc:	41 55                	push   %r13
  100afe:	41 54                	push   %r12
  100b00:	53                   	push   %rbx
  100b01:	48 83 ec 08          	sub    $0x8,%rsp
  100b05:	48 89 fb             	mov    %rdi,%rbx
  100b08:	41 89 f5             	mov    %esi,%r13d
  100b0b:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b0e:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100b12:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100b18:	72 14                	jb     100b2e <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100b1a:	48 89 df             	mov    %rbx,%rdi
  100b1d:	e8 5c ff ff ff       	call   100a7e <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b22:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100b26:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100b2c:	73 ec                	jae    100b1a <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100b2e:	41 80 fd 0a          	cmp    $0xa,%r13b
  100b32:	74 1e                	je     100b52 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100b34:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100b38:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100b3c:	45 0f b6 ed          	movzbl %r13b,%r13d
  100b40:	45 09 e5             	or     %r12d,%r13d
  100b43:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
  100b47:	48 83 c4 08          	add    $0x8,%rsp
  100b4b:	5b                   	pop    %rbx
  100b4c:	41 5c                	pop    %r12
  100b4e:	41 5d                	pop    %r13
  100b50:	5d                   	pop    %rbp
  100b51:	c3                   	ret    
        int pos = (cell_ - console) % 80;
  100b52:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100b58:	48 89 c1             	mov    %rax,%rcx
  100b5b:	48 89 c6             	mov    %rax,%rsi
  100b5e:	48 d1 fe             	sar    %rsi
  100b61:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100b68:	66 66 66 
  100b6b:	48 89 f0             	mov    %rsi,%rax
  100b6e:	48 f7 ea             	imul   %rdx
  100b71:	48 c1 fa 05          	sar    $0x5,%rdx
  100b75:	48 89 c8             	mov    %rcx,%rax
  100b78:	48 c1 f8 3f          	sar    $0x3f,%rax
  100b7c:	48 29 c2             	sub    %rax,%rdx
  100b7f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  100b83:	48 c1 e2 04          	shl    $0x4,%rdx
  100b87:	89 f0                	mov    %esi,%eax
  100b89:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
  100b8b:	41 83 cc 20          	or     $0x20,%r12d
  100b8f:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100b93:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  100b97:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  100b9b:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
  100b9f:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100ba2:	83 f8 50             	cmp    $0x50,%eax
  100ba5:	75 e8                	jne    100b8f <console_printer::putc(unsigned char, int)+0x9b>
  100ba7:	eb 9e                	jmp    100b47 <console_printer::putc(unsigned char, int)+0x53>
  100ba9:	90                   	nop

0000000000100baa <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100baa:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100bae:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100bb2:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100bb8:	48 d1 f8             	sar    %rax
  100bbb:	89 05 3b 84 fb ff    	mov    %eax,-0x47bc5(%rip)        # b8ffc <cursorpos>
}
  100bc1:	c3                   	ret    

0000000000100bc2 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100bc2:	f3 0f 1e fa          	endbr64 
  100bc6:	55                   	push   %rbp
  100bc7:	48 89 e5             	mov    %rsp,%rbp
  100bca:	41 56                	push   %r14
  100bcc:	41 55                	push   %r13
  100bce:	41 54                	push   %r12
  100bd0:	53                   	push   %rbx
  100bd1:	48 83 ec 20          	sub    $0x20,%rsp
  100bd5:	89 fb                	mov    %edi,%ebx
  100bd7:	41 89 f4             	mov    %esi,%r12d
  100bda:	49 89 d5             	mov    %rdx,%r13
  100bdd:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100be0:	89 fa                	mov    %edi,%edx
  100be2:	c1 ea 1f             	shr    $0x1f,%edx
  100be5:	89 fe                	mov    %edi,%esi
  100be7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100beb:	e8 46 fe ff ff       	call   100a36 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100bf0:	4c 89 f1             	mov    %r14,%rcx
  100bf3:	4c 89 ea             	mov    %r13,%rdx
  100bf6:	44 89 e6             	mov    %r12d,%esi
  100bf9:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100bfd:	e8 38 f6 ff ff       	call   10023a <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100c02:	85 db                	test   %ebx,%ebx
  100c04:	78 1a                	js     100c20 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100c06:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100c0a:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c10:	48 d1 f8             	sar    %rax
}
  100c13:	48 83 c4 20          	add    $0x20,%rsp
  100c17:	5b                   	pop    %rbx
  100c18:	41 5c                	pop    %r12
  100c1a:	41 5d                	pop    %r13
  100c1c:	41 5e                	pop    %r14
  100c1e:	5d                   	pop    %rbp
  100c1f:	c3                   	ret    
        cp.move_cursor();
  100c20:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c24:	e8 81 ff ff ff       	call   100baa <console_printer::move_cursor()>
  100c29:	eb db                	jmp    100c06 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100c2b <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100c2b:	f3 0f 1e fa          	endbr64 
  100c2f:	55                   	push   %rbp
  100c30:	48 89 e5             	mov    %rsp,%rbp
  100c33:	48 83 ec 50          	sub    $0x50,%rsp
  100c37:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100c3b:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100c3f:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100c43:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100c4a:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100c4e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100c52:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100c56:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100c5a:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100c5e:	e8 5f ff ff ff       	call   100bc2 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100c63:	c9                   	leave  
  100c64:	c3                   	ret    

0000000000100c65 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100c65:	f3 0f 1e fa          	endbr64 
  100c69:	55                   	push   %rbp
  100c6a:	48 89 e5             	mov    %rsp,%rbp
  100c6d:	48 89 f9             	mov    %rdi,%rcx
  100c70:	41 89 f0             	mov    %esi,%r8d
  100c73:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100c76:	ba 50 14 10 00       	mov    $0x101450,%edx
  100c7b:	be 00 c0 00 00       	mov    $0xc000,%esi
  100c80:	bf 30 07 00 00       	mov    $0x730,%edi
  100c85:	b0 00                	mov    $0x0,%al
  100c87:	e8 9f ff ff ff       	call   100c2b <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100c8c:	b8 03 00 00 00       	mov    $0x3,%eax
    asm volatile ("syscall"
  100c91:	bf 00 00 00 00       	mov    $0x0,%edi
  100c96:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100c98:	eb fe                	jmp    100c98 <assert_fail(char const*, int, char const*)+0x33>
