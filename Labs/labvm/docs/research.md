### Find a recent research paper relating to advancements in Virtual Memory

##### Paper Name, Authors, and Year Published

Paper Name: The Virtual Block Interface: A Flexible Alternative
to the Conventional Virtual Memory Framework

Authors: Nastaran Hajinazar, Pratyush Patel,
Minesh Patel, Konstantinos Kanellopoulos, Saugata Ghose,
Rachata Ausavarungnirun, Geraldo F. Oliveira, Jonathan Appavoo, Vivek Seshadri

Year Published: 2020

##### Desribe the papers Contribution (2-4 sentences)

This paper describes a new virtual memory framework called Virtual Block Interface (VBI). This new framework intrudes the idea of variably-sized "blocks" given to applications running on a system which are a contiguous region of globally-visible VBI address space, and the application in control of the "block" can allocate different units of information (things like data structures, etc.) to a separate block. This framework reduces the overhead of address translation due to the fact that it reduces the amount of translation requests and also increases the effectiveness of managing fast memory regions.

#### Create a Real-World Analogy Explaining the Contribution (2-4 sentences)

The VBI described in the research paper can be thought of as a library system in a large city, imagine a big city which has a lot of libraries. Normally in a system like this, each library would manage its own collection of books, and if you wanted to borrow a book, you would need to know which library has the book, and go through that individual library's process for checking out the book. This equates to how virtual memory normally works within a computer system with the libraries being different memory regions and the books being different data structures.

Now applying the VBI method to this system, it makes a few improvements, firstly that now the library network is unified meaning that now instead of each library having its own collection of books and checkout method, it is now consistent among libraries where they all have the same centralized checkout method, and all of the books are arranged into "virtual bookshelves" which can contain books from several different libraries. And secondly, that now if a certain book (memory address) becomes very "popular", that book can now be dynamically allocated to different bookshelves across the system, this makes sure that everyone has acess without having to wait.

### Find a recent research paper relating to advancements in Memory Safety

##### Paper Name, Authors, and Year Published

Paper Name: Corundum: Statically-Enforced Persistent Memory Safety

Authors: Morteza Hoseinzadeh,  Steven Swanson

##### Desribe the papers Contribution (2-4 sentences)

This research paper describes a new Rust based library called Corundum. This library is designed to enhance memory safety when using persistent-memory (PM) programming by utilizing Rust's type system to detect and prevent common bugs found in PM programming like memory leaks, dangling pointers, etc. This library also provides a transactional memory interface which ensures updates to persistent data which helps maintain data consistency in the event that a system fails. Corundum is also designed to be faster than other existing PM libraries.

#### Create a Real-World Analogy Explaining the Contribution (2-4 sentences)

Imagine you are building a house (data structure) which needs to be able to handle harsh weather (system crashes) without being destroyed. Normal building methods (programming languages) would require you to check every individual piece of the house to ensure that they are strong enough to withstand the bad weather.

Corundum would be like if instead of manually checking every individual piece, you had a robot (Rust's type system) which could automatically check every part of the house for you by using advanced sensors (static checks and transactional memory) to ensure the house is strong enough to handle bad weather without falling over.