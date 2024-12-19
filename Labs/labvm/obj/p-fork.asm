
obj/p-fork.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:
extern uint8_t end[];

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
  10000b:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  100010:	0f 05                	syscall 
    // Fork a total of three new copies.
    pid_t p1 = sys_fork();
    assert(p1 >= 0);
  100012:	85 c0                	test   %eax,%eax
  100014:	78 3a                	js     100050 <process_main()+0x50>
  100016:	48 89 c3             	mov    %rax,%rbx
    register uintptr_t rax asm("rax") = syscallno;
  100019:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  10001e:	0f 05                	syscall 
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
    return rax;
  100020:	49 89 c4             	mov    %rax,%r12
    pid_t p2 = sys_fork();
    assert(p2 >= 0);
  100023:	85 c0                	test   %eax,%eax
  100025:	78 3d                	js     100064 <process_main()+0x64>
    register uintptr_t rax asm("rax") = syscallno;
  100027:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
  10002c:	0f 05                	syscall 

    // Check fork return values: fork should return 0 to child.
    if (sys_getpid() == 1) {
  10002e:	83 f8 01             	cmp    $0x1,%eax
  100031:	74 45                	je     100078 <process_main()+0x78>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
    } else {
        assert(p1 == 0 || p2 == 0);
  100033:	85 db                	test   %ebx,%ebx
  100035:	74 55                	je     10008c <process_main()+0x8c>
  100037:	45 85 e4             	test   %r12d,%r12d
  10003a:	74 50                	je     10008c <process_main()+0x8c>
  10003c:	ba 4a 0d 10 00       	mov    $0x100d4a,%edx
  100041:	be 16 00 00 00       	mov    $0x16,%esi
  100046:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  10004b:	e8 ab 0c 00 00       	call   100cfb <assert_fail(char const*, int, char const*)>
    assert(p1 >= 0);
  100050:	ba 30 0d 10 00       	mov    $0x100d30,%edx
  100055:	be 0e 00 00 00       	mov    $0xe,%esi
  10005a:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  10005f:	e8 97 0c 00 00       	call   100cfb <assert_fail(char const*, int, char const*)>
    assert(p2 >= 0);
  100064:	ba 42 0d 10 00       	mov    $0x100d42,%edx
  100069:	be 10 00 00 00       	mov    $0x10,%esi
  10006e:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  100073:	e8 83 0c 00 00       	call   100cfb <assert_fail(char const*, int, char const*)>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
  100078:	85 db                	test   %ebx,%ebx
  10007a:	0f 94 c0             	sete   %al
  10007d:	45 85 e4             	test   %r12d,%r12d
  100080:	0f 94 c2             	sete   %dl
  100083:	08 d0                	or     %dl,%al
  100085:	75 40                	jne    1000c7 <process_main()+0xc7>
  100087:	44 39 e3             	cmp    %r12d,%ebx
  10008a:	74 3b                	je     1000c7 <process_main()+0xc7>
    register uintptr_t rax asm("rax") = syscallno;
  10008c:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
  100091:	0f 05                	syscall 
    return rax;
  100093:	49 89 c4             	mov    %rax,%r12


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  100096:	89 c3                	mov    %eax,%ebx
    }

    // The rest of this code is like p-allocator.c.

    pid_t p = sys_getpid();
    srand(p);
  100098:	89 c7                	mov    %eax,%edi
  10009a:	e8 c8 01 00 00       	call   100267 <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  10009f:	b8 1b 30 10 00       	mov    $0x10301b,%eax

    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1000a4:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000aa:	48 89 05 57 1f 00 00 	mov    %rax,0x1f57(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1000b1:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000b4:	48 83 e8 01          	sub    $0x1,%rax
  1000b8:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000be:	48 89 05 3b 1f 00 00 	mov    %rax,0x1f3b(%rip)        # 102000 <stack_bottom>
  1000c5:	eb 1b                	jmp    1000e2 <process_main()+0xe2>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
  1000c7:	ba 60 0d 10 00       	mov    $0x100d60,%edx
  1000cc:	be 14 00 00 00       	mov    $0x14,%esi
  1000d1:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  1000d6:	e8 20 0c 00 00       	call   100cfb <assert_fail(char const*, int, char const*)>
    register uintptr_t rax asm("rax") = syscallno;
  1000db:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  1000e0:	0f 05                	syscall 

    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  1000e2:	be 63 00 00 00       	mov    $0x63,%esi
  1000e7:	bf 00 00 00 00       	mov    $0x0,%edi
  1000ec:	e8 95 01 00 00       	call   100286 <rand(int, int)>
  1000f1:	39 d8                	cmp    %ebx,%eax
  1000f3:	7d e6                	jge    1000db <process_main()+0xdb>
            if (heap_top == stack_bottom
  1000f5:	48 8b 3d 0c 1f 00 00 	mov    0x1f0c(%rip),%rdi        # 102008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  1000fc:	48 3b 3d fd 1e 00 00 	cmp    0x1efd(%rip),%rdi        # 102000 <stack_bottom>
  100103:	74 2a                	je     10012f <process_main()+0x12f>
    register uintptr_t rax asm("rax") = syscallno;
  100105:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
  10010a:	0f 05                	syscall 
  10010c:	85 c0                	test   %eax,%eax
  10010e:	78 1f                	js     10012f <process_main()+0x12f>
                break;
            }
            *heap_top = p;               // check we can write to new page
  100110:	48 8b 05 f1 1e 00 00 	mov    0x1ef1(%rip),%rax        # 102008 <heap_top>
  100117:	44 88 20             	mov    %r12b,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  10011a:	66 44 89 25 7c 8e fb 	mov    %r12w,-0x47184(%rip)        # b8f9e <console+0xf9e>
  100121:	ff 
            heap_top += PAGESIZE;
  100122:	48 81 05 db 1e 00 00 	addq   $0x1000,0x1edb(%rip)        # 102008 <heap_top>
  100129:	00 10 00 00 
  10012d:	eb ac                	jmp    1000db <process_main()+0xdb>
    register uintptr_t rax asm("rax") = syscallno;
  10012f:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  100134:	0f 05                	syscall 
    return rax;
  100136:	eb f7                	jmp    10012f <process_main()+0x12f>

0000000000100138 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  100138:	f3 0f 1e fa          	endbr64 
  10013c:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  10013f:	48 39 fe             	cmp    %rdi,%rsi
  100142:	72 1d                	jb     100161 <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  100144:	b9 00 00 00 00       	mov    $0x0,%ecx
  100149:	48 85 d2             	test   %rdx,%rdx
  10014c:	74 12                	je     100160 <memmove+0x28>
            *d++ = *s++;
  10014e:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  100152:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  100156:	48 83 c1 01          	add    $0x1,%rcx
  10015a:	48 39 ca             	cmp    %rcx,%rdx
  10015d:	75 ef                	jne    10014e <memmove+0x16>
        }
    }
    return dst;
}
  10015f:	c3                   	ret    
  100160:	c3                   	ret    
    if (s < d && s + n > d) {
  100161:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100165:	48 39 cf             	cmp    %rcx,%rdi
  100168:	73 da                	jae    100144 <memmove+0xc>
        while (n-- > 0) {
  10016a:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10016e:	48 85 d2             	test   %rdx,%rdx
  100171:	74 ec                	je     10015f <memmove+0x27>
            *--d = *--s;
  100173:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100177:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  10017a:	48 83 e9 01          	sub    $0x1,%rcx
  10017e:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  100182:	75 ef                	jne    100173 <memmove+0x3b>
  100184:	c3                   	ret    

0000000000100185 <memset>:

void* memset(void* v, int c, size_t n) {
  100185:	f3 0f 1e fa          	endbr64 
  100189:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10018c:	48 85 d2             	test   %rdx,%rdx
  10018f:	74 12                	je     1001a3 <memset+0x1e>
  100191:	48 01 fa             	add    %rdi,%rdx
  100194:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
  100197:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10019a:	48 83 c1 01          	add    $0x1,%rcx
  10019e:	48 39 ca             	cmp    %rcx,%rdx
  1001a1:	75 f4                	jne    100197 <memset+0x12>
    }
    return v;
}
  1001a3:	c3                   	ret    

00000000001001a4 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  1001a4:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  1001a8:	80 3f 00             	cmpb   $0x0,(%rdi)
  1001ab:	74 10                	je     1001bd <strlen+0x19>
  1001ad:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  1001b2:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  1001b6:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1001ba:	75 f6                	jne    1001b2 <strlen+0xe>
  1001bc:	c3                   	ret    
  1001bd:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  1001c2:	c3                   	ret    

00000000001001c3 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  1001c3:	f3 0f 1e fa          	endbr64 
  1001c7:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1001ca:	ba 00 00 00 00       	mov    $0x0,%edx
  1001cf:	48 85 f6             	test   %rsi,%rsi
  1001d2:	74 11                	je     1001e5 <strnlen+0x22>
  1001d4:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
  1001d8:	74 0c                	je     1001e6 <strnlen+0x23>
        ++n;
  1001da:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1001de:	48 39 d0             	cmp    %rdx,%rax
  1001e1:	75 f1                	jne    1001d4 <strnlen+0x11>
  1001e3:	eb 04                	jmp    1001e9 <strnlen+0x26>
  1001e5:	c3                   	ret    
  1001e6:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
  1001e9:	c3                   	ret    

00000000001001ea <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1001ea:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  1001ee:	0f b6 07             	movzbl (%rdi),%eax
  1001f1:	84 c0                	test   %al,%al
  1001f3:	74 10                	je     100205 <strchr+0x1b>
  1001f5:	40 38 f0             	cmp    %sil,%al
  1001f8:	74 18                	je     100212 <strchr+0x28>
        ++s;
  1001fa:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1001fe:	0f b6 07             	movzbl (%rdi),%eax
  100201:	84 c0                	test   %al,%al
  100203:	75 f0                	jne    1001f5 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  100205:	40 84 f6             	test   %sil,%sil
  100208:	b8 00 00 00 00       	mov    $0x0,%eax
  10020d:	48 0f 44 c7          	cmove  %rdi,%rax
    }
}
  100211:	c3                   	ret    
  100212:	48 89 f8             	mov    %rdi,%rax
  100215:	c3                   	ret    

0000000000100216 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  100216:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  10021a:	83 3d f7 1d 00 00 00 	cmpl   $0x0,0x1df7(%rip)        # 102018 <rand_seed_set>
  100221:	74 27                	je     10024a <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  100223:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  10022a:	f4 51 58 
  10022d:	48 0f af 05 db 1d 00 	imul   0x1ddb(%rip),%rax        # 102010 <rand_seed>
  100234:	00 
  100235:	48 83 c0 01          	add    $0x1,%rax
  100239:	48 89 05 d0 1d 00 00 	mov    %rax,0x1dd0(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  100240:	48 c1 e8 20          	shr    $0x20,%rax
  100244:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100249:	c3                   	ret    

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  10024a:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  100251:	87 d4 30 
  100254:	48 89 05 b5 1d 00 00 	mov    %rax,0x1db5(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  10025b:	c7 05 b3 1d 00 00 01 	movl   $0x1,0x1db3(%rip)        # 102018 <rand_seed_set>
  100262:	00 00 00 
}
  100265:	eb bc                	jmp    100223 <rand()+0xd>

0000000000100267 <srand(unsigned int)>:
void srand(unsigned seed) {
  100267:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  10026b:	89 f8                	mov    %edi,%eax
  10026d:	48 c1 e7 20          	shl    $0x20,%rdi
  100271:	48 09 c7             	or     %rax,%rdi
  100274:	48 89 3d 95 1d 00 00 	mov    %rdi,0x1d95(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  10027b:	c7 05 93 1d 00 00 01 	movl   $0x1,0x1d93(%rip)        # 102018 <rand_seed_set>
  100282:	00 00 00 
}
  100285:	c3                   	ret    

0000000000100286 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100286:	f3 0f 1e fa          	endbr64 
  10028a:	55                   	push   %rbp
  10028b:	48 89 e5             	mov    %rsp,%rbp
  10028e:	41 54                	push   %r12
  100290:	53                   	push   %rbx
    assert(min <= max);
  100291:	39 f7                	cmp    %esi,%edi
  100293:	7f 26                	jg     1002bb <rand(int, int)+0x35>
  100295:	41 89 fc             	mov    %edi,%r12d
  100298:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  10029a:	e8 77 ff ff ff       	call   100216 <rand()>
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10029f:	44 29 e3             	sub    %r12d,%ebx
  1002a2:	83 c3 01             	add    $0x1,%ebx
  1002a5:	48 63 db             	movslq %ebx,%rbx
    unsigned long r = rand();
  1002a8:	48 98                	cltq   
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1002aa:	48 0f af d8          	imul   %rax,%rbx
  1002ae:	48 c1 eb 1f          	shr    $0x1f,%rbx
  1002b2:	41 8d 04 1c          	lea    (%r12,%rbx,1),%eax
}
  1002b6:	5b                   	pop    %rbx
  1002b7:	41 5c                	pop    %r12
  1002b9:	5d                   	pop    %rbp
  1002ba:	c3                   	ret    
    assert(min <= max);
  1002bb:	ba 7f 0d 10 00       	mov    $0x100d7f,%edx
  1002c0:	be f2 00 00 00       	mov    $0xf2,%esi
  1002c5:	bf 8a 0d 10 00       	mov    $0x100d8a,%edi
  1002ca:	e8 2c 0a 00 00       	call   100cfb <assert_fail(char const*, int, char const*)>
  1002cf:	90                   	nop

00000000001002d0 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  1002d0:	f3 0f 1e fa          	endbr64 
  1002d4:	55                   	push   %rbp
  1002d5:	48 89 e5             	mov    %rsp,%rbp
  1002d8:	41 57                	push   %r15
  1002da:	41 56                	push   %r14
  1002dc:	41 55                	push   %r13
  1002de:	41 54                	push   %r12
  1002e0:	53                   	push   %rbx
  1002e1:	48 83 ec 58          	sub    $0x58,%rsp
  1002e5:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  1002e9:	0f b6 02             	movzbl (%rdx),%eax
  1002ec:	84 c0                	test   %al,%al
  1002ee:	0f 84 c8 07 00 00    	je     100abc <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
  1002f4:	49 89 fe             	mov    %rdi,%r14
  1002f7:	49 89 d4             	mov    %rdx,%r12
  1002fa:	41 89 f7             	mov    %esi,%r15d
  1002fd:	e9 89 05 00 00       	jmp    10088b <printer::vprintf(int, char const*, __va_list_tag*)+0x5bb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  100302:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  100307:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
  10030d:	45 84 e4             	test   %r12b,%r12b
  100310:	0f 84 87 07 00 00    	je     100a9d <printer::vprintf(int, char const*, __va_list_tag*)+0x7cd>
        int flags = 0;
  100316:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  10031c:	41 0f be f4          	movsbl %r12b,%esi
  100320:	bf 70 14 10 00       	mov    $0x101470,%edi
  100325:	e8 c0 fe ff ff       	call   1001ea <strchr>
  10032a:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  10032d:	48 85 c0             	test   %rax,%rax
  100330:	74 70                	je     1003a2 <printer::vprintf(int, char const*, __va_list_tag*)+0xd2>
                flags |= 1 << (flagc - flag_chars);
  100332:	48 81 e9 70 14 10 00 	sub    $0x101470,%rcx
  100339:	b8 01 00 00 00       	mov    $0x1,%eax
  10033e:	d3 e0                	shl    %cl,%eax
  100340:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  100343:	48 83 c3 01          	add    $0x1,%rbx
  100347:	44 0f b6 23          	movzbl (%rbx),%r12d
  10034b:	45 84 e4             	test   %r12b,%r12b
  10034e:	75 cc                	jne    10031c <printer::vprintf(int, char const*, __va_list_tag*)+0x4c>
  100350:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
                break;
            }
        }

        // process width
        int width = -1;
  100354:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  10035a:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,-0x64(%rbp)
        if (*format == '.') {
  100361:	80 3b 2e             	cmpb   $0x2e,(%rbx)
  100364:	0f 84 c7 00 00 00    	je     100431 <printer::vprintf(int, char const*, __va_list_tag*)+0x161>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  10036a:	0f b6 03             	movzbl (%rbx),%eax
  10036d:	3c 6c                	cmp    $0x6c,%al
  10036f:	0f 84 4f 01 00 00    	je     1004c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
  100375:	0f 8f 3d 01 00 00    	jg     1004b8 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e8>
  10037b:	3c 68                	cmp    $0x68,%al
  10037d:	0f 85 60 01 00 00    	jne    1004e3 <printer::vprintf(int, char const*, __va_list_tag*)+0x213>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  100383:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  100387:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  10038b:	8d 50 bd             	lea    -0x43(%rax),%edx
  10038e:	80 fa 35             	cmp    $0x35,%dl
  100391:	0f 87 ac 05 00 00    	ja     100943 <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
  100397:	0f b6 d2             	movzbl %dl,%edx
  10039a:	3e ff 24 d5 b0 0d 10 	notrack jmp *0x100db0(,%rdx,8)
  1003a1:	00 
        if (*format >= '1' && *format <= '9') {
  1003a2:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
  1003a6:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
  1003ab:	3c 08                	cmp    $0x8,%al
  1003ad:	77 32                	ja     1003e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x111>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003af:	0f b6 03             	movzbl (%rbx),%eax
  1003b2:	8d 50 d0             	lea    -0x30(%rax),%edx
  1003b5:	80 fa 09             	cmp    $0x9,%dl
  1003b8:	77 61                	ja     10041b <printer::vprintf(int, char const*, __va_list_tag*)+0x14b>
  1003ba:	41 bd 00 00 00 00    	mov    $0x0,%r13d
                width = 10 * width + *format++ - '0';
  1003c0:	48 83 c3 01          	add    $0x1,%rbx
  1003c4:	43 8d 54 ad 00       	lea    0x0(%r13,%r13,4),%edx
  1003c9:	0f be c0             	movsbl %al,%eax
  1003cc:	44 8d 6c 50 d0       	lea    -0x30(%rax,%rdx,2),%r13d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003d1:	0f b6 03             	movzbl (%rbx),%eax
  1003d4:	8d 50 d0             	lea    -0x30(%rax),%edx
  1003d7:	80 fa 09             	cmp    $0x9,%dl
  1003da:	76 e4                	jbe    1003c0 <printer::vprintf(int, char const*, __va_list_tag*)+0xf0>
  1003dc:	e9 79 ff ff ff       	jmp    10035a <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        } else if (*format == '*') {
  1003e1:	41 80 fc 2a          	cmp    $0x2a,%r12b
  1003e5:	75 3f                	jne    100426 <printer::vprintf(int, char const*, __va_list_tag*)+0x156>
            width = va_arg(val, int);
  1003e7:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1003eb:	8b 01                	mov    (%rcx),%eax
  1003ed:	83 f8 2f             	cmp    $0x2f,%eax
  1003f0:	77 17                	ja     100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x139>
  1003f2:	89 c2                	mov    %eax,%edx
  1003f4:	48 03 51 10          	add    0x10(%rcx),%rdx
  1003f8:	83 c0 08             	add    $0x8,%eax
  1003fb:	89 01                	mov    %eax,(%rcx)
  1003fd:	44 8b 2a             	mov    (%rdx),%r13d
            ++format;
  100400:	48 83 c3 01          	add    $0x1,%rbx
  100404:	e9 51 ff ff ff       	jmp    10035a <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            width = va_arg(val, int);
  100409:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10040d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100411:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100415:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100419:	eb e2                	jmp    1003fd <printer::vprintf(int, char const*, __va_list_tag*)+0x12d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  10041b:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100421:	e9 34 ff ff ff       	jmp    10035a <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        int width = -1;
  100426:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  10042c:	e9 29 ff ff ff       	jmp    10035a <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            ++format;
  100431:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
  100435:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100439:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10043c:	80 f9 09             	cmp    $0x9,%cl
  10043f:	76 13                	jbe    100454 <printer::vprintf(int, char const*, __va_list_tag*)+0x184>
            } else if (*format == '*') {
  100441:	3c 2a                	cmp    $0x2a,%al
  100443:	74 33                	je     100478 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a8>
            ++format;
  100445:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
  100448:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
  10044f:	e9 16 ff ff ff       	jmp    10036a <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100454:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
  100459:	48 83 c2 01          	add    $0x1,%rdx
  10045d:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  100460:	0f be c0             	movsbl %al,%eax
  100463:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100467:	0f b6 02             	movzbl (%rdx),%eax
  10046a:	8d 70 d0             	lea    -0x30(%rax),%esi
  10046d:	40 80 fe 09          	cmp    $0x9,%sil
  100471:	76 e6                	jbe    100459 <printer::vprintf(int, char const*, __va_list_tag*)+0x189>
                    precision = 10 * precision + *format++ - '0';
  100473:	48 89 d3             	mov    %rdx,%rbx
  100476:	eb 1c                	jmp    100494 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c4>
                precision = va_arg(val, int);
  100478:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10047c:	8b 01                	mov    (%rcx),%eax
  10047e:	83 f8 2f             	cmp    $0x2f,%eax
  100481:	77 23                	ja     1004a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d6>
  100483:	89 c2                	mov    %eax,%edx
  100485:	48 03 51 10          	add    0x10(%rcx),%rdx
  100489:	83 c0 08             	add    $0x8,%eax
  10048c:	89 01                	mov    %eax,(%rcx)
  10048e:	8b 0a                	mov    (%rdx),%ecx
                ++format;
  100490:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
  100494:	85 c9                	test   %ecx,%ecx
  100496:	b8 00 00 00 00       	mov    $0x0,%eax
  10049b:	0f 49 c1             	cmovns %ecx,%eax
  10049e:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1004a1:	e9 c4 fe ff ff       	jmp    10036a <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                precision = va_arg(val, int);
  1004a6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004aa:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1004ae:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004b2:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1004b6:	eb d6                	jmp    10048e <printer::vprintf(int, char const*, __va_list_tag*)+0x1be>
        switch (*format) {
  1004b8:	3c 74                	cmp    $0x74,%al
  1004ba:	74 08                	je     1004c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
  1004bc:	3c 7a                	cmp    $0x7a,%al
  1004be:	0f 85 e5 05 00 00    	jne    100aa9 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d9>
            ++format;
  1004c4:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        switch (*format) {
  1004c8:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1004cc:	8d 50 bd             	lea    -0x43(%rax),%edx
  1004cf:	80 fa 35             	cmp    $0x35,%dl
  1004d2:	0f 87 6b 04 00 00    	ja     100943 <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
  1004d8:	0f b6 d2             	movzbl %dl,%edx
  1004db:	3e ff 24 d5 60 0f 10 	notrack jmp *0x100f60(,%rdx,8)
  1004e2:	00 
  1004e3:	8d 50 bd             	lea    -0x43(%rax),%edx
  1004e6:	80 fa 35             	cmp    $0x35,%dl
  1004e9:	0f 87 51 04 00 00    	ja     100940 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1004ef:	0f b6 d2             	movzbl %dl,%edx
  1004f2:	3e ff 24 d5 10 11 10 	notrack jmp *0x101110(,%rdx,8)
  1004f9:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1004fa:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004fe:	8b 07                	mov    (%rdi),%eax
  100500:	83 f8 2f             	cmp    $0x2f,%eax
  100503:	77 3b                	ja     100540 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
  100505:	89 c2                	mov    %eax,%edx
  100507:	48 03 57 10          	add    0x10(%rdi),%rdx
  10050b:	83 c0 08             	add    $0x8,%eax
  10050e:	89 07                	mov    %eax,(%rdi)
  100510:	48 8b 12             	mov    (%rdx),%rdx
  100513:	48 89 cb             	mov    %rcx,%rbx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  100516:	48 89 d0             	mov    %rdx,%rax
  100519:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  10051d:	49 89 d0             	mov    %rdx,%r8
  100520:	49 f7 d8             	neg    %r8
  100523:	25 80 00 00 00       	and    $0x80,%eax
  100528:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  10052c:	0b 45 a8             	or     -0x58(%rbp),%eax
  10052f:	83 c8 60             	or     $0x60,%eax
  100532:	89 45 a8             	mov    %eax,-0x58(%rbp)
        const char* data = "";
  100535:	41 bc 99 0d 10 00    	mov    $0x100d99,%r12d
            break;
  10053b:	e9 c9 01 00 00       	jmp    100709 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100540:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100544:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100548:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10054c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100550:	eb be                	jmp    100510 <printer::vprintf(int, char const*, __va_list_tag*)+0x240>
        switch (*format) {
  100552:	48 89 cb             	mov    %rcx,%rbx
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100555:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100559:	8b 01                	mov    (%rcx),%eax
  10055b:	83 f8 2f             	cmp    $0x2f,%eax
  10055e:	77 10                	ja     100570 <printer::vprintf(int, char const*, __va_list_tag*)+0x2a0>
  100560:	89 c2                	mov    %eax,%edx
  100562:	48 03 51 10          	add    0x10(%rcx),%rdx
  100566:	83 c0 08             	add    $0x8,%eax
  100569:	89 01                	mov    %eax,(%rcx)
  10056b:	48 63 12             	movslq (%rdx),%rdx
  10056e:	eb a6                	jmp    100516 <printer::vprintf(int, char const*, __va_list_tag*)+0x246>
  100570:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100574:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100578:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10057c:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100580:	eb e9                	jmp    10056b <printer::vprintf(int, char const*, __va_list_tag*)+0x29b>
        switch (*format) {
  100582:	48 89 cb             	mov    %rcx,%rbx
  100585:	b8 01 00 00 00       	mov    $0x1,%eax
  10058a:	be 0a 00 00 00       	mov    $0xa,%esi
  10058f:	e9 a8 00 00 00       	jmp    10063c <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  100594:	48 89 cb             	mov    %rcx,%rbx
  100597:	b8 00 00 00 00       	mov    $0x0,%eax
  10059c:	be 0a 00 00 00       	mov    $0xa,%esi
  1005a1:	e9 96 00 00 00       	jmp    10063c <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  1005a6:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ab:	be 0a 00 00 00       	mov    $0xa,%esi
  1005b0:	e9 87 00 00 00       	jmp    10063c <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  1005b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ba:	be 0a 00 00 00       	mov    $0xa,%esi
  1005bf:	eb 7b                	jmp    10063c <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        }
        case 'u':
        format_unsigned:
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1005c1:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1005c5:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1005c9:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1005cd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1005d1:	e9 84 00 00 00       	jmp    10065a <printer::vprintf(int, char const*, __va_list_tag*)+0x38a>
  1005d6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1005da:	8b 07                	mov    (%rdi),%eax
  1005dc:	83 f8 2f             	cmp    $0x2f,%eax
  1005df:	77 10                	ja     1005f1 <printer::vprintf(int, char const*, __va_list_tag*)+0x321>
  1005e1:	89 c2                	mov    %eax,%edx
  1005e3:	48 03 57 10          	add    0x10(%rdi),%rdx
  1005e7:	83 c0 08             	add    $0x8,%eax
  1005ea:	89 07                	mov    %eax,(%rdi)
  1005ec:	44 8b 02             	mov    (%rdx),%r8d
  1005ef:	eb 6c                	jmp    10065d <printer::vprintf(int, char const*, __va_list_tag*)+0x38d>
  1005f1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1005f5:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1005f9:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1005fd:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100601:	eb e9                	jmp    1005ec <printer::vprintf(int, char const*, __va_list_tag*)+0x31c>
  100603:	41 89 f1             	mov    %esi,%r9d
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  100606:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
    const char* digits = upper_digits;
  10060d:	bf a0 14 10 00       	mov    $0x1014a0,%edi
  100612:	e9 5f 03 00 00       	jmp    100976 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
  100617:	48 89 cb             	mov    %rcx,%rbx
  10061a:	b8 01 00 00 00       	mov    $0x1,%eax
  10061f:	eb 16                	jmp    100637 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  100621:	48 89 cb             	mov    %rcx,%rbx
  100624:	b8 00 00 00 00       	mov    $0x0,%eax
  100629:	eb 0c                	jmp    100637 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  10062b:	b8 00 00 00 00       	mov    $0x0,%eax
  100630:	eb 05                	jmp    100637 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  100632:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  100637:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10063c:	85 c0                	test   %eax,%eax
  10063e:	74 96                	je     1005d6 <printer::vprintf(int, char const*, __va_list_tag*)+0x306>
  100640:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100644:	8b 07                	mov    (%rdi),%eax
  100646:	83 f8 2f             	cmp    $0x2f,%eax
  100649:	0f 87 72 ff ff ff    	ja     1005c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f1>
  10064f:	89 c2                	mov    %eax,%edx
  100651:	48 03 57 10          	add    0x10(%rdi),%rdx
  100655:	83 c0 08             	add    $0x8,%eax
  100658:	89 07                	mov    %eax,(%rdi)
  10065a:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  10065d:	83 4d a8 20          	orl    $0x20,-0x58(%rbp)
    if (base < 0) {
  100661:	85 f6                	test   %esi,%esi
  100663:	79 9e                	jns    100603 <printer::vprintf(int, char const*, __va_list_tag*)+0x333>
        base = -base;
  100665:	41 89 f1             	mov    %esi,%r9d
  100668:	f7 de                	neg    %esi
  10066a:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
        digits = lower_digits;
  100671:	bf 80 14 10 00       	mov    $0x101480,%edi
  100676:	e9 fb 02 00 00       	jmp    100976 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
  10067b:	48 89 cb             	mov    %rcx,%rbx
  10067e:	b8 01 00 00 00       	mov    $0x1,%eax
  100683:	eb 16                	jmp    10069b <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  100685:	48 89 cb             	mov    %rcx,%rbx
  100688:	b8 00 00 00 00       	mov    $0x0,%eax
  10068d:	eb 0c                	jmp    10069b <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  10068f:	b8 00 00 00 00       	mov    $0x0,%eax
  100694:	eb 05                	jmp    10069b <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
  100696:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  10069b:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1006a0:	eb 9a                	jmp    10063c <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        switch (*format) {
  1006a2:	48 89 cb             	mov    %rcx,%rbx
            num = (uintptr_t) va_arg(val, void*);
  1006a5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006a9:	8b 01                	mov    (%rcx),%eax
  1006ab:	83 f8 2f             	cmp    $0x2f,%eax
  1006ae:	77 21                	ja     1006d1 <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
  1006b0:	89 c2                	mov    %eax,%edx
  1006b2:	48 03 51 10          	add    0x10(%rcx),%rdx
  1006b6:	83 c0 08             	add    $0x8,%eax
  1006b9:	89 01                	mov    %eax,(%rcx)
  1006bb:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1006be:	81 4d a8 21 01 00 00 	orl    $0x121,-0x58(%rbp)
            base = -16;
  1006c5:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1006ca:	eb 99                	jmp    100665 <printer::vprintf(int, char const*, __va_list_tag*)+0x395>
        switch (*format) {
  1006cc:	48 89 cb             	mov    %rcx,%rbx
  1006cf:	eb d4                	jmp    1006a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d5>
            num = (uintptr_t) va_arg(val, void*);
  1006d1:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006d5:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1006d9:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006dd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1006e1:	eb d8                	jmp    1006bb <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
        switch (*format) {
  1006e3:	48 89 cb             	mov    %rcx,%rbx
            data = va_arg(val, char*);
  1006e6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006ea:	8b 07                	mov    (%rdi),%eax
  1006ec:	83 f8 2f             	cmp    $0x2f,%eax
  1006ef:	0f 87 b9 01 00 00    	ja     1008ae <printer::vprintf(int, char const*, __va_list_tag*)+0x5de>
  1006f5:	89 c2                	mov    %eax,%edx
  1006f7:	48 03 57 10          	add    0x10(%rdi),%rdx
  1006fb:	83 c0 08             	add    $0x8,%eax
  1006fe:	89 07                	mov    %eax,(%rdi)
  100700:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
  100703:	41 b8 00 00 00 00    	mov    $0x0,%r8d
        if (flags & FLAG_NUMERIC) {
  100709:	8b 45 a8             	mov    -0x58(%rbp),%eax
  10070c:	83 e0 20             	and    $0x20,%eax
  10070f:	89 45 8c             	mov    %eax,-0x74(%rbp)
  100712:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  100718:	0f 85 48 02 00 00    	jne    100966 <printer::vprintf(int, char const*, __va_list_tag*)+0x696>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  10071e:	8b 45 a8             	mov    -0x58(%rbp),%eax
  100721:	89 45 88             	mov    %eax,-0x78(%rbp)
  100724:	83 e0 60             	and    $0x60,%eax
  100727:	83 f8 60             	cmp    $0x60,%eax
  10072a:	0f 84 7b 02 00 00    	je     1009ab <printer::vprintf(int, char const*, __va_list_tag*)+0x6db>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100730:	8b 45 a8             	mov    -0x58(%rbp),%eax
  100733:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  100736:	48 c7 45 a0 99 0d 10 	movq   $0x100d99,-0x60(%rbp)
  10073d:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  10073e:	83 f8 21             	cmp    $0x21,%eax
  100741:	0f 84 a0 02 00 00    	je     1009e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x717>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  100747:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
  10074a:	89 c8                	mov    %ecx,%eax
  10074c:	f7 d0                	not    %eax
  10074e:	c1 e8 1f             	shr    $0x1f,%eax
  100751:	89 45 84             	mov    %eax,-0x7c(%rbp)
  100754:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
  100758:	0f 85 c5 02 00 00    	jne    100a23 <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
  10075e:	84 c0                	test   %al,%al
  100760:	0f 84 bd 02 00 00    	je     100a23 <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
            datalen = strnlen(data, precision);
  100766:	48 63 f1             	movslq %ecx,%rsi
  100769:	4c 89 e7             	mov    %r12,%rdi
  10076c:	e8 52 fa ff ff       	call   1001c3 <strnlen>
  100771:	89 45 98             	mov    %eax,-0x68(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  100774:	8b 45 88             	mov    -0x78(%rbp),%eax
  100777:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  10077a:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  100781:	83 f8 22             	cmp    $0x22,%eax
  100784:	0f 84 d1 02 00 00    	je     100a5b <printer::vprintf(int, char const*, __va_list_tag*)+0x78b>
        }

        width -= datalen + zeros + strlen(prefix);
  10078a:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  10078e:	e8 11 fa ff ff       	call   1001a4 <strlen>
  100793:	8b 55 9c             	mov    -0x64(%rbp),%edx
  100796:	03 55 98             	add    -0x68(%rbp),%edx
  100799:	44 89 e9             	mov    %r13d,%ecx
  10079c:	29 d1                	sub    %edx,%ecx
  10079e:	29 c1                	sub    %eax,%ecx
  1007a0:	89 4d 8c             	mov    %ecx,-0x74(%rbp)
  1007a3:	41 89 cd             	mov    %ecx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1007a6:	f6 45 a8 04          	testb  $0x4,-0x58(%rbp)
  1007aa:	75 2f                	jne    1007db <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
  1007ac:	85 c9                	test   %ecx,%ecx
  1007ae:	7e 2b                	jle    1007db <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
            putc(' ', color);
  1007b0:	49 8b 06             	mov    (%r14),%rax
  1007b3:	44 89 fa             	mov    %r15d,%edx
  1007b6:	be 20 00 00 00       	mov    $0x20,%esi
  1007bb:	4c 89 f7             	mov    %r14,%rdi
  1007be:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1007c0:	41 83 ed 01          	sub    $0x1,%r13d
  1007c4:	45 85 ed             	test   %r13d,%r13d
  1007c7:	7f e7                	jg     1007b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x4e0>
  1007c9:	8b 7d 8c             	mov    -0x74(%rbp),%edi
  1007cc:	85 ff                	test   %edi,%edi
  1007ce:	b8 01 00 00 00       	mov    $0x1,%eax
  1007d3:	0f 4f c7             	cmovg  %edi,%eax
  1007d6:	29 c7                	sub    %eax,%edi
  1007d8:	41 89 fd             	mov    %edi,%r13d
        }
        for (; *prefix; ++prefix) {
  1007db:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  1007df:	0f b6 07             	movzbl (%rdi),%eax
  1007e2:	84 c0                	test   %al,%al
  1007e4:	74 24                	je     10080a <printer::vprintf(int, char const*, __va_list_tag*)+0x53a>
  1007e6:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1007ea:	48 89 fb             	mov    %rdi,%rbx
            putc(*prefix, color);
  1007ed:	0f b6 f0             	movzbl %al,%esi
  1007f0:	49 8b 06             	mov    (%r14),%rax
  1007f3:	44 89 fa             	mov    %r15d,%edx
  1007f6:	4c 89 f7             	mov    %r14,%rdi
  1007f9:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
  1007fb:	48 83 c3 01          	add    $0x1,%rbx
  1007ff:	0f b6 03             	movzbl (%rbx),%eax
  100802:	84 c0                	test   %al,%al
  100804:	75 e7                	jne    1007ed <printer::vprintf(int, char const*, __va_list_tag*)+0x51d>
  100806:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; zeros > 0; --zeros) {
  10080a:	8b 45 9c             	mov    -0x64(%rbp),%eax
  10080d:	85 c0                	test   %eax,%eax
  10080f:	7e 1f                	jle    100830 <printer::vprintf(int, char const*, __va_list_tag*)+0x560>
  100811:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100815:	89 c3                	mov    %eax,%ebx
            putc('0', color);
  100817:	49 8b 06             	mov    (%r14),%rax
  10081a:	44 89 fa             	mov    %r15d,%edx
  10081d:	be 30 00 00 00       	mov    $0x30,%esi
  100822:	4c 89 f7             	mov    %r14,%rdi
  100825:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
  100827:	83 eb 01             	sub    $0x1,%ebx
  10082a:	75 eb                	jne    100817 <printer::vprintf(int, char const*, __va_list_tag*)+0x547>
  10082c:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; datalen > 0; ++data, --datalen) {
  100830:	8b 45 98             	mov    -0x68(%rbp),%eax
  100833:	85 c0                	test   %eax,%eax
  100835:	7e 29                	jle    100860 <printer::vprintf(int, char const*, __va_list_tag*)+0x590>
  100837:	89 c0                	mov    %eax,%eax
  100839:	4c 01 e0             	add    %r12,%rax
  10083c:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100840:	48 89 c3             	mov    %rax,%rbx
            putc(*data, color);
  100843:	41 0f b6 34 24       	movzbl (%r12),%esi
  100848:	49 8b 06             	mov    (%r14),%rax
  10084b:	44 89 fa             	mov    %r15d,%edx
  10084e:	4c 89 f7             	mov    %r14,%rdi
  100851:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  100853:	49 83 c4 01          	add    $0x1,%r12
  100857:	49 39 dc             	cmp    %rbx,%r12
  10085a:	75 e7                	jne    100843 <printer::vprintf(int, char const*, __va_list_tag*)+0x573>
  10085c:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; width > 0; --width) {
  100860:	45 85 ed             	test   %r13d,%r13d
  100863:	7e 16                	jle    10087b <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
            putc(' ', color);
  100865:	49 8b 06             	mov    (%r14),%rax
  100868:	44 89 fa             	mov    %r15d,%edx
  10086b:	be 20 00 00 00       	mov    $0x20,%esi
  100870:	4c 89 f7             	mov    %r14,%rdi
  100873:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
  100875:	41 83 ed 01          	sub    $0x1,%r13d
  100879:	75 ea                	jne    100865 <printer::vprintf(int, char const*, __va_list_tag*)+0x595>
    for (; *format; ++format) {
  10087b:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  10087f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100883:	84 c0                	test   %al,%al
  100885:	0f 84 31 02 00 00    	je     100abc <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
        if (*format != '%') {
  10088b:	3c 25                	cmp    $0x25,%al
  10088d:	0f 84 6f fa ff ff    	je     100302 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  100893:	0f b6 f0             	movzbl %al,%esi
  100896:	49 8b 06             	mov    (%r14),%rax
  100899:	44 89 fa             	mov    %r15d,%edx
  10089c:	4c 89 f7             	mov    %r14,%rdi
  10089f:	ff 10                	call   *(%rax)
            continue;
  1008a1:	4c 89 e3             	mov    %r12,%rbx
  1008a4:	eb d5                	jmp    10087b <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
  1008a6:	48 89 cb             	mov    %rcx,%rbx
  1008a9:	e9 38 fe ff ff       	jmp    1006e6 <printer::vprintf(int, char const*, __va_list_tag*)+0x416>
            data = va_arg(val, char*);
  1008ae:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008b2:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1008b6:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008ba:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1008be:	e9 3d fe ff ff       	jmp    100700 <printer::vprintf(int, char const*, __va_list_tag*)+0x430>
        switch (*format) {
  1008c3:	48 89 cb             	mov    %rcx,%rbx
            color = va_arg(val, int);
  1008c6:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008ca:	8b 01                	mov    (%rcx),%eax
  1008cc:	83 f8 2f             	cmp    $0x2f,%eax
  1008cf:	77 15                	ja     1008e6 <printer::vprintf(int, char const*, __va_list_tag*)+0x616>
  1008d1:	89 c2                	mov    %eax,%edx
  1008d3:	48 03 51 10          	add    0x10(%rcx),%rdx
  1008d7:	83 c0 08             	add    $0x8,%eax
  1008da:	89 01                	mov    %eax,(%rcx)
  1008dc:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  1008df:	eb 9a                	jmp    10087b <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
  1008e1:	48 89 cb             	mov    %rcx,%rbx
  1008e4:	eb e0                	jmp    1008c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f6>
            color = va_arg(val, int);
  1008e6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008ea:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1008ee:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008f2:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1008f6:	eb e4                	jmp    1008dc <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
        switch (*format) {
  1008f8:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = va_arg(val, int);
  1008fb:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008ff:	8b 07                	mov    (%rdi),%eax
  100901:	83 f8 2f             	cmp    $0x2f,%eax
  100904:	77 28                	ja     10092e <printer::vprintf(int, char const*, __va_list_tag*)+0x65e>
  100906:	89 c2                	mov    %eax,%edx
  100908:	48 03 57 10          	add    0x10(%rdi),%rdx
  10090c:	83 c0 08             	add    $0x8,%eax
  10090f:	89 07                	mov    %eax,(%rdi)
  100911:	8b 02                	mov    (%rdx),%eax
  100913:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100916:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  10091a:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  10091e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  100924:	e9 e0 fd ff ff       	jmp    100709 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        switch (*format) {
  100929:	48 89 cb             	mov    %rcx,%rbx
  10092c:	eb cd                	jmp    1008fb <printer::vprintf(int, char const*, __va_list_tag*)+0x62b>
            numbuf[0] = va_arg(val, int);
  10092e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100932:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100936:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10093a:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10093e:	eb d1                	jmp    100911 <printer::vprintf(int, char const*, __va_list_tag*)+0x641>
        switch (*format) {
  100940:	48 89 d9             	mov    %rbx,%rcx
            numbuf[0] = (*format ? *format : '%');
  100943:	84 c0                	test   %al,%al
  100945:	0f 85 39 01 00 00    	jne    100a84 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b4>
  10094b:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  10094f:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  100953:	48 8d 59 ff          	lea    -0x1(%rcx),%rbx
            data = numbuf;
  100957:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  10095b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100961:	e9 a3 fd ff ff       	jmp    100709 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        if (flags & FLAG_NUMERIC) {
  100966:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  10096c:	bf a0 14 10 00       	mov    $0x1014a0,%edi
        if (flags & FLAG_NUMERIC) {
  100971:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  100976:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  10097a:	4c 89 c1             	mov    %r8,%rcx
  10097d:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
  100981:	48 63 f6             	movslq %esi,%rsi
  100984:	49 83 ec 01          	sub    $0x1,%r12
  100988:	48 89 c8             	mov    %rcx,%rax
  10098b:	ba 00 00 00 00       	mov    $0x0,%edx
  100990:	48 f7 f6             	div    %rsi
  100993:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100997:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
  10099b:	48 89 ca             	mov    %rcx,%rdx
  10099e:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  1009a1:	48 39 d6             	cmp    %rdx,%rsi
  1009a4:	76 de                	jbe    100984 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b4>
  1009a6:	e9 73 fd ff ff       	jmp    10071e <printer::vprintf(int, char const*, __va_list_tag*)+0x44e>
                prefix = "-";
  1009ab:	48 c7 45 a0 96 0d 10 	movq   $0x100d96,-0x60(%rbp)
  1009b2:	00 
            if (flags & FLAG_NEGATIVE) {
  1009b3:	8b 45 a8             	mov    -0x58(%rbp),%eax
  1009b6:	a8 80                	test   $0x80,%al
  1009b8:	0f 85 89 fd ff ff    	jne    100747 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = "+";
  1009be:	48 c7 45 a0 91 0d 10 	movq   $0x100d91,-0x60(%rbp)
  1009c5:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  1009c6:	a8 10                	test   $0x10,%al
  1009c8:	0f 85 79 fd ff ff    	jne    100747 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = " ";
  1009ce:	a8 08                	test   $0x8,%al
  1009d0:	ba 99 0d 10 00       	mov    $0x100d99,%edx
  1009d5:	b8 98 0d 10 00       	mov    $0x100d98,%eax
  1009da:	48 0f 44 c2          	cmove  %rdx,%rax
  1009de:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  1009e2:	e9 60 fd ff ff       	jmp    100747 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (base == 16 || base == -16)
  1009e7:	41 8d 41 10          	lea    0x10(%r9),%eax
  1009eb:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  1009f0:	0f 85 51 fd ff ff    	jne    100747 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (num || (flags & FLAG_ALT2))) {
  1009f6:	4d 85 c0             	test   %r8,%r8
  1009f9:	75 0d                	jne    100a08 <printer::vprintf(int, char const*, __va_list_tag*)+0x738>
  1009fb:	f7 45 a8 00 01 00 00 	testl  $0x100,-0x58(%rbp)
  100a02:	0f 84 3f fd ff ff    	je     100747 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            prefix = (base == -16 ? "0x" : "0X");
  100a08:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100a0c:	ba 9a 0d 10 00       	mov    $0x100d9a,%edx
  100a11:	b8 93 0d 10 00       	mov    $0x100d93,%eax
  100a16:	48 0f 44 c2          	cmove  %rdx,%rax
  100a1a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  100a1e:	e9 24 fd ff ff       	jmp    100747 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            datalen = strlen(data);
  100a23:	4c 89 e7             	mov    %r12,%rdi
  100a26:	e8 79 f7 ff ff       	call   1001a4 <strlen>
  100a2b:	89 45 98             	mov    %eax,-0x68(%rbp)
            && precision >= 0) {
  100a2e:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
  100a32:	0f 84 3c fd ff ff    	je     100774 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
  100a38:	80 7d 84 00          	cmpb   $0x0,-0x7c(%rbp)
  100a3c:	0f 84 32 fd ff ff    	je     100774 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
            zeros = precision > datalen ? precision - datalen : 0;
  100a42:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  100a45:	89 fa                	mov    %edi,%edx
  100a47:	29 c2                	sub    %eax,%edx
  100a49:	39 c7                	cmp    %eax,%edi
  100a4b:	b8 00 00 00 00       	mov    $0x0,%eax
  100a50:	0f 4f c2             	cmovg  %edx,%eax
  100a53:	89 45 9c             	mov    %eax,-0x64(%rbp)
  100a56:	e9 2f fd ff ff       	jmp    10078a <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
                   && datalen + (int) strlen(prefix) < width) {
  100a5b:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  100a5f:	e8 40 f7 ff ff       	call   1001a4 <strlen>
  100a64:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100a67:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100a6a:	44 89 e9             	mov    %r13d,%ecx
  100a6d:	29 f9                	sub    %edi,%ecx
  100a6f:	29 c1                	sub    %eax,%ecx
  100a71:	44 39 ea             	cmp    %r13d,%edx
  100a74:	b8 00 00 00 00       	mov    $0x0,%eax
  100a79:	0f 4c c1             	cmovl  %ecx,%eax
  100a7c:	89 45 9c             	mov    %eax,-0x64(%rbp)
  100a7f:	e9 06 fd ff ff       	jmp    10078a <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
  100a84:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = (*format ? *format : '%');
  100a87:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100a8a:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100a8e:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  100a92:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100a98:	e9 6c fc ff ff       	jmp    100709 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        int flags = 0;
  100a9d:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  100aa4:	e9 ab f8 ff ff       	jmp    100354 <printer::vprintf(int, char const*, __va_list_tag*)+0x84>
        switch (*format) {
  100aa9:	8d 50 bd             	lea    -0x43(%rax),%edx
  100aac:	80 fa 35             	cmp    $0x35,%dl
  100aaf:	77 d6                	ja     100a87 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b7>
  100ab1:	0f b6 d2             	movzbl %dl,%edx
  100ab4:	3e ff 24 d5 c0 12 10 	notrack jmp *0x1012c0(,%rdx,8)
  100abb:	00 
        }
    }
}
  100abc:	48 83 c4 58          	add    $0x58,%rsp
  100ac0:	5b                   	pop    %rbx
  100ac1:	41 5c                	pop    %r12
  100ac3:	41 5d                	pop    %r13
  100ac5:	41 5e                	pop    %r14
  100ac7:	41 5f                	pop    %r15
  100ac9:	5d                   	pop    %rbp
  100aca:	c3                   	ret    
  100acb:	90                   	nop

0000000000100acc <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100acc:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100ad0:	48 c7 07 28 15 10 00 	movq   $0x101528,(%rdi)
  100ad7:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100ade:	00 
  100adf:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100ae2:	85 f6                	test   %esi,%esi
  100ae4:	78 18                	js     100afe <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100ae6:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100aec:	7f 0f                	jg     100afd <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100aee:	48 63 f6             	movslq %esi,%rsi
  100af1:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100af8:	00 
  100af9:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100afd:	c3                   	ret    
        cell_ += cursorpos;
  100afe:	8b 05 f8 84 fb ff    	mov    -0x47b08(%rip),%eax        # b8ffc <cursorpos>
  100b04:	48 98                	cltq   
  100b06:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100b0d:	00 
  100b0e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100b12:	c3                   	ret    
  100b13:	90                   	nop

0000000000100b14 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100b14:	f3 0f 1e fa          	endbr64 
  100b18:	55                   	push   %rbp
  100b19:	48 89 e5             	mov    %rsp,%rbp
  100b1c:	53                   	push   %rbx
  100b1d:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100b21:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100b28:	00 
  100b29:	72 18                	jb     100b43 <console_printer::scroll()+0x2f>
  100b2b:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100b2e:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  100b33:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100b37:	75 1e                	jne    100b57 <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
  100b39:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
  100b3d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  100b41:	c9                   	leave  
  100b42:	c3                   	ret    
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100b43:	ba b8 14 10 00       	mov    $0x1014b8,%edx
  100b48:	be 1f 02 00 00       	mov    $0x21f,%esi
  100b4d:	bf 8a 0d 10 00       	mov    $0x100d8a,%edi
  100b52:	e8 a4 01 00 00       	call   100cfb <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100b57:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100b5c:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100b61:	48 89 c7             	mov    %rax,%rdi
  100b64:	e8 cf f5 ff ff       	call   100138 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100b69:	ba a0 00 00 00       	mov    $0xa0,%edx
  100b6e:	be 00 00 00 00       	mov    $0x0,%esi
  100b73:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100b78:	e8 08 f6 ff ff       	call   100185 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100b7d:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100b81:	48 2d a0 00 00 00    	sub    $0xa0,%rax
  100b87:	eb b0                	jmp    100b39 <console_printer::scroll()+0x25>
  100b89:	90                   	nop

0000000000100b8a <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100b8a:	f3 0f 1e fa          	endbr64 
  100b8e:	55                   	push   %rbp
  100b8f:	48 89 e5             	mov    %rsp,%rbp
  100b92:	41 55                	push   %r13
  100b94:	41 54                	push   %r12
  100b96:	53                   	push   %rbx
  100b97:	48 83 ec 08          	sub    $0x8,%rsp
  100b9b:	48 89 fb             	mov    %rdi,%rbx
  100b9e:	41 89 f5             	mov    %esi,%r13d
  100ba1:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100ba4:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100ba8:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100bae:	72 14                	jb     100bc4 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100bb0:	48 89 df             	mov    %rbx,%rdi
  100bb3:	e8 5c ff ff ff       	call   100b14 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100bb8:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100bbc:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100bc2:	73 ec                	jae    100bb0 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100bc4:	41 80 fd 0a          	cmp    $0xa,%r13b
  100bc8:	74 1e                	je     100be8 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100bca:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100bce:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100bd2:	45 0f b6 ed          	movzbl %r13b,%r13d
  100bd6:	45 09 e5             	or     %r12d,%r13d
  100bd9:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
  100bdd:	48 83 c4 08          	add    $0x8,%rsp
  100be1:	5b                   	pop    %rbx
  100be2:	41 5c                	pop    %r12
  100be4:	41 5d                	pop    %r13
  100be6:	5d                   	pop    %rbp
  100be7:	c3                   	ret    
        int pos = (cell_ - console) % 80;
  100be8:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100bee:	48 89 c1             	mov    %rax,%rcx
  100bf1:	48 89 c6             	mov    %rax,%rsi
  100bf4:	48 d1 fe             	sar    %rsi
  100bf7:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100bfe:	66 66 66 
  100c01:	48 89 f0             	mov    %rsi,%rax
  100c04:	48 f7 ea             	imul   %rdx
  100c07:	48 c1 fa 05          	sar    $0x5,%rdx
  100c0b:	48 89 c8             	mov    %rcx,%rax
  100c0e:	48 c1 f8 3f          	sar    $0x3f,%rax
  100c12:	48 29 c2             	sub    %rax,%rdx
  100c15:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  100c19:	48 c1 e2 04          	shl    $0x4,%rdx
  100c1d:	89 f0                	mov    %esi,%eax
  100c1f:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
  100c21:	41 83 cc 20          	or     $0x20,%r12d
  100c25:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100c29:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  100c2d:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  100c31:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
  100c35:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100c38:	83 f8 50             	cmp    $0x50,%eax
  100c3b:	75 e8                	jne    100c25 <console_printer::putc(unsigned char, int)+0x9b>
  100c3d:	eb 9e                	jmp    100bdd <console_printer::putc(unsigned char, int)+0x53>
  100c3f:	90                   	nop

0000000000100c40 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100c40:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100c44:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100c48:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c4e:	48 d1 f8             	sar    %rax
  100c51:	89 05 a5 83 fb ff    	mov    %eax,-0x47c5b(%rip)        # b8ffc <cursorpos>
}
  100c57:	c3                   	ret    

0000000000100c58 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100c58:	f3 0f 1e fa          	endbr64 
  100c5c:	55                   	push   %rbp
  100c5d:	48 89 e5             	mov    %rsp,%rbp
  100c60:	41 56                	push   %r14
  100c62:	41 55                	push   %r13
  100c64:	41 54                	push   %r12
  100c66:	53                   	push   %rbx
  100c67:	48 83 ec 20          	sub    $0x20,%rsp
  100c6b:	89 fb                	mov    %edi,%ebx
  100c6d:	41 89 f4             	mov    %esi,%r12d
  100c70:	49 89 d5             	mov    %rdx,%r13
  100c73:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100c76:	89 fa                	mov    %edi,%edx
  100c78:	c1 ea 1f             	shr    $0x1f,%edx
  100c7b:	89 fe                	mov    %edi,%esi
  100c7d:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c81:	e8 46 fe ff ff       	call   100acc <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100c86:	4c 89 f1             	mov    %r14,%rcx
  100c89:	4c 89 ea             	mov    %r13,%rdx
  100c8c:	44 89 e6             	mov    %r12d,%esi
  100c8f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c93:	e8 38 f6 ff ff       	call   1002d0 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100c98:	85 db                	test   %ebx,%ebx
  100c9a:	78 1a                	js     100cb6 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100c9c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100ca0:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100ca6:	48 d1 f8             	sar    %rax
}
  100ca9:	48 83 c4 20          	add    $0x20,%rsp
  100cad:	5b                   	pop    %rbx
  100cae:	41 5c                	pop    %r12
  100cb0:	41 5d                	pop    %r13
  100cb2:	41 5e                	pop    %r14
  100cb4:	5d                   	pop    %rbp
  100cb5:	c3                   	ret    
        cp.move_cursor();
  100cb6:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100cba:	e8 81 ff ff ff       	call   100c40 <console_printer::move_cursor()>
  100cbf:	eb db                	jmp    100c9c <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100cc1 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100cc1:	f3 0f 1e fa          	endbr64 
  100cc5:	55                   	push   %rbp
  100cc6:	48 89 e5             	mov    %rsp,%rbp
  100cc9:	48 83 ec 50          	sub    $0x50,%rsp
  100ccd:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100cd1:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100cd5:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100cd9:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100ce0:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100ce4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100ce8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100cec:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100cf0:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100cf4:	e8 5f ff ff ff       	call   100c58 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100cf9:	c9                   	leave  
  100cfa:	c3                   	ret    

0000000000100cfb <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100cfb:	f3 0f 1e fa          	endbr64 
  100cff:	55                   	push   %rbp
  100d00:	48 89 e5             	mov    %rsp,%rbp
  100d03:	48 89 f9             	mov    %rdi,%rcx
  100d06:	41 89 f0             	mov    %esi,%r8d
  100d09:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100d0c:	ba 30 15 10 00       	mov    $0x101530,%edx
  100d11:	be 00 c0 00 00       	mov    $0xc000,%esi
  100d16:	bf 30 07 00 00       	mov    $0x730,%edi
  100d1b:	b0 00                	mov    $0x0,%al
  100d1d:	e8 9f ff ff ff       	call   100cc1 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100d22:	b8 03 00 00 00       	mov    $0x3,%eax
    asm volatile ("syscall"
  100d27:	bf 00 00 00 00       	mov    $0x0,%edi
  100d2c:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100d2e:	eb fe                	jmp    100d2e <assert_fail(char const*, int, char const*)+0x33>
