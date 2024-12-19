# GCC/Clang's AddressSanitizer

## How It Works

AddressSanitizer is a runtime memory error detector which can help identify errors like out-of-bounds accesses to things on the heap or stack, use-after-free errors, use-after-return errors, use-after-scope errors, double-free and invalid free errors, and memory leaks. AddressSanitizer works by inserting additional checks around operations that involve memory when code is compiles with the -fsanitize=address flag. It applies these memory checke by using something called shadow memory. This is a memory mapping technique where AddressSanitizer will maintain a "shadow memory" which mirrors the memory layout found in the application it is being run on. Each byte of memory within the application's memory is represented by a byte within AddressSanitizer's shadow memory which will indicate whether the corresponding byte is invalid in some way. During the execution of a program, every memory access which is performed is then cross-verified with the shadow memory, and if an invalid address is detected, AddressSanitizer will then trigger an error report including detailed information about the error such as the type of error, memory address which caused the problem, size of the invalid address, a call stack, and other information about the memory region. All of this does come at a cost however as programs running AddressSanitizer typically run about 2x slower and use 2-3x more memory due to needing to keep track of the shadow memory and it may not detect problems in memory-mapped I/O regions along with potentially missing bugs caused by custom memory allocators.

## Sources

https://girishjoshi.io/post/using-address-sanitizer-with-gcc/

https://clang.llvm.org/docs/AddressSanitizer.html