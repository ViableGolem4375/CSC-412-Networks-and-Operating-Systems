# Debug Old Code (A2 & A3)

### Group Member's Name

Kevin Lattuada

#### Program Name (A2 or A3)

makewords.c

#### Stack Layout

Show how local variables are allocated on the stack by using gdb after running your program.
```
$ (gdb) bt
```
Copy and paste the output here.

Output of bt:

0x00007ffff74b87e2 in __GI___libc_read (fd=0, buf=0x619000000080, nbytes=1024) at ../sysdeps/unix/sysv/linux/read.c:26
26      ../sysdeps/unix/sysv/linux/read.c: No such file or directory.
(gdb) bt
#0  0x00007ffff74b87e2 in __GI___libc_read (fd=0, buf=0x619000000080, nbytes=1024)
    at ../sysdeps/unix/sysv/linux/read.c:26
#1  0x00007ffff7430c36 in _IO_new_file_underflow (fp=0x7ffff75beaa0 <_IO_2_1_stdin_>)
    at ./libio/libioP.h:947
#2  0x00007ffff7431d96 in __GI__IO_default_uflow (fp=0x7ffff75beaa0 <_IO_2_1_stdin_>)
    at ./libio/libioP.h:947
#3  0x00007ffff742441c in __GI__IO_getline_info (fp=fp@entry=0x7ffff75beaa0 <_IO_2_1_stdin_>, 
    buf=buf@entry=0x7fffffffd6e0 "bt\n", n=n@entry=1023, delim=delim@entry=10, 
    extract_delim=extract_delim@entry=1, eof=eof@entry=0x0) at ./libio/iogetline.c:60
#4  0x00007ffff742451c in __GI__IO_getline (fp=fp@entry=0x7ffff75beaa0 <_IO_2_1_stdin_>, 
--Type <RET> for more, q to quit, c to continue without paging--c
    buf=buf@entry=0x7fffffffd6e0 "bt\n", n=n@entry=1023, delim=delim@entry=10, extract_delim=extract_delim@entry=1) at ./libio/iogetline.c:34
#5  0x00007ffff7423410 in _IO_fgets (buf=0x7fffffffd6e0 "bt\n", n=1024, fp=0x7ffff75beaa0 <_IO_2_1_stdin_>) at ./libio/iofgets.c:53
#6  0x00007ffff760d6ac in __interceptor_fgets (s=0x7fffffffd6e0 "bt\n", size=<optimized out>, file=<optimized out>) at ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors.inc:1255
#7  0x0000555555555731 in main () at makewords.c:50

#### Improvements and Debugging

**Describe the bugs you found?**

Here are some bugs I found within the code:

- The makewords function does not check if the input string is NULL which could cause problems if there is no input.

**Describe any unsafe code you found?**

- The buffer in main is set to 1024 bytes, while this should be fine in most cases it still has the potential to lead to buffer overflow.

**Describe one improvement made to the code**

One improvement made to the code is dynamically setting the size of the buffer based on the size of the input. This corrects the above problem of buffer overflows by making it so the size of the buffer is always set to something which will be able to handle the input size.

#### Fixing a Bug or Improving the Code

Copy your original code as NAME_original.c or NAME_original.cpp.

Implement a fix or improvement identified above. What lines was it implemented?

The fix was implemented on lines 51, 52, 55, and 64.

The buffer was changed from being hardcoded to 1024 bytes to being set to NULL by default and then changed to a new value using a new bufsize variable. The while loop on line 55 was also changed to support this new functionality and the memory for it is freed on line 64.

### Group Member's Name
Matthew Langton
#### Program Name (A2 or A3)
A3 - sort.c
#### Stack Layout

# How they begin in main
(gdb) info local
words = 0x5555555592a0
size = 0
capacity = 100
buffer = 0x0
bufsize = 0

# When I pass the program 2 lines
(gdb) info local
words = 0x5555555592a0
size = 2
capacity = 100
buffer = 0x5555555595d0 "monke"
bufsize = 120



#### Improvements and Debugging

**Describe the bugs you found?**
- One thing I found was that he calls an array of words, and it may be better to call them lines.
- Another bug I found was that the program doesn't free word (line) when it errors out.

**Describe any unsafe code you found?**
- One peice of unsafe code I found was he substitues \n for \0. This becomes a problem because it doesn't check for errors, especially in the instance of: 
if \n isn't found, what does the program do then.

- Another piece of unsafe code was that he doesn't free buffer when the program errors out.
**Describe one improvement made to the code**
- One improvement was I added freeing of memory after errors in two places in the code.
- Another improvement was checking for errors, replacing the '\n\ with '\0'.
#### Fixing a Bug or Improving the Code

Copy your original code as NAME_original.c or NAME_original.cpp.

Implement a fix or improvement identified above. What lines was it implemented?

The fix was implemented on lines 63, 71-78, 85-90

The fix on line 63 was freeing a buffer.
The fix on lines 71-78 was adding error checking to the strcspn call
The fix on line 85-90 was freeing memory if strdup fails.