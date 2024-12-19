# Debug Insecure Code

### Stack Trace

##### Results with gets()

Before Output:

#0  _IO_gets (buf=0x7fffffffdc00 "\352\304W\367\377\177") at ./libio/iogets.c:32
#1  0x0000555555555488 in main (argc=1, argv=0x7fffffffdd58) at main.c:36

After Output:

main (argc=1, argv=0x7fffffffdd58) at main.c:40

##### Results with fgets()

Before Output:

__interceptor_fgets (s=0x7fffffffdc00 "\352\304W\367\377\177", size=16, 
    file=0x7ffff75beaa0 <_IO_2_1_stdin_>)
    at ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors.inc:1248
#1  0x00005555555554da in main (argc=1, argv=0x7fffffffdd58) at main.c:38

After Output:

main (argc=1, argv=0x7fffffffdd58) at main.c:40

##### Describe the differences between the stack traces

In the stack traces it is apparent that the fgets stack trace contains sanitizers to check the data and make sure that it will not cause a buffer overflow, whereas this does not seem to exist within the gets stack trace. 

### Develop your Intution

Answer the questions below as a group.

##### Describe steps on how to recreate to a buffer overflow when gets() is used.

To recreate a buffer overflow when gets() is used, you can use the following steps:

1. Run the program.
2. Find out what the buffer size is set to.
3. Provide input which is a largfer size than that buffer.

##### Describe the change in values of buffer, shared_memory, and m as a result of overflow.

The change in buffer is as a result of the overflow itself. The values of the 16 bytes within buffer will be different based on the user input because of the overwriting of bytes. The value of m within the program might change as a result of the overflow as a result of the buffer overflow having the potential of overwriting its location in memory. This same effect could occur for shared_memory as well where the value of it could potentially be overwritten as a result of the buffer overflow.

##### Provide a short intuitive explanation of how gets() causes an error and how fgets() fixes this. 

gets() causes an error because the function is unsafe and does not check the buffer size when it takes input. This leads to buffer overflow errors because since it does not check the buffer size, the input could be larger than the buffer. fgets() fixes this by checking the input compared to the buffer size to prevent buffer overflow errors.

##### Provide a short intuitive explanation of how GDB to analyze programs with parent/child processes and shared_memory.

Handling Forks:
- You can use set follow-fork-mode parent or set follow-fork-mode child to decide whether GDB should follow the parent or child process after a fork.
- You can switch between parent and child using info inferiors to list processes and inferior <id> to switch.

Shared Memory:
- You can use x (examine memory) to inspect shared memory regions.
- You can set breakpoints in both parent and child processes to observe interactions with shared memory using break <line_number>.