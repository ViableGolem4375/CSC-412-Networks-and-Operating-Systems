# Choose a Tech Stack! :)

Make sure to complete the steps in the Lab where you develop the code in the ```chat``` folder. This will give you a little hands-on experience working with everything.

# Your Team

You are the lead developers at a small Dev House, where you constantly build full stack apps for clients. These are primarily CRUD apps with user authentication and public APIs. You are trying to pick a set of reliable and reusable technologies to solidify your company's tech stack.

This will help you reuse code across clients and ensure timely deliver of projects per client. 

Your team members expertise and interest across different technologies:

| Team Member | Technology | Expertise | Interest |
| ----------- | ---------- | --------- | -------- |
| Lilly       | Javascript | Low   | Medium |
| Jordi       | Javascript | Low   | Low |
| Angel       | Javascript | High  | Low |
| Lilly       | C++        | High  | Medium |
| Jordi       | C++        | High  | High |
| Angel       | C++        | High  | Low |
| Lilly       | Rust       | Low   | Low |
| Jordi       | Rust       | Low   | High |
| Angel       | Rust       | Low   | High |
| Lilly       | Phoenix    | Low    | High |
| Jordi       | Phoenix    | Medium | High |
| Angel       | Phoenix    | Low    | Medium |
| Lilly       | HTMX       | Low    | Low |
| Jordi       | HTMX       | Low    | Medium |
| Angel       | HTMX       | Medium | Medium |

Overall your team have strong development experience using server-side technologies like C++ and strong interest in C++ and Rust. In general, they do not like client-side technologies like Javacript, and likely HTML/CSS. How can you select technologies and frameworks that will help your team be happy and productive while delivery high quality solutions for your customers?


# Technology & Framework Research

Read up on the history of the the C++ Web Framework Crow. Are there any better alternatives?  Compare your technology stack ideas with your team's expertise and interests. 

#### Make the case for using the C++ Web Framework Crow
Two strong points supporting using Crow in your Server-Side Stack (2-3 sentences per point).

1. Crow features high speed performance and efficiency which makes it a useful tool for building interactive web applications. Its basis within C++ along with its usage of the language's features allow Crow to have very low latency and high throughput which is highly useful for any kind of interactive application.

2. Crow features an excellent ability to control memory usage. its basis in C++ allows Crow to have a very fine control over system resources which leads to lower memory usage compared to things based in other languages. This is particularly useful for an interactive web application which may need to handle a lot of connections at once ad it reduces the load placed onto the servers.


#### Make the case for NOT using the C++ Web Framework Crow
Two strong points supporting NOT using Crow in your Server-Side Stack (2-3 sentences per point).

1. Crow has limited support and a smaller community of users. This means that there will be fewer tutorials and resources available. This has the potential to slow down development as it means developers will have to spend more time trying to understand the framework rather than actually working through tasks. It also means that updates and improvements to the framework will come slower and less frequently, while not inherently a problem it can be disadvantageous if new features and bug fixes are necessary.

2. Crow lacks many advanced features. While it is an excellent choice for basic applications due to its efficiency, it lacks some more advanced features such as built-in authentication. As a result of this, more development time may be necessary depending on the application being build. This lack of advanced features also poses potential problems for scalability. This means it may need to be combined with other frameworks to accomplish the desired level of scalability.


# Technology & Framework Decision

### Describe your Client-Side Stack?
Describe each part below in 3--5 sentences. Make sure to include possible positives and negatives of your choices. 

##### Describe the Teck Stack (frameworks/languages):

For the client-side tech stack, we will be using Phoenix LiveView with Elixir. Phoenix LiveView allows us to build interactive, real-time web applications without writing JavaScript by handling updates over WebSockets. This framework utilizes Elixir and the Phoenix framework to manage real-time communication. It simplifies the development process by keeping most of the logic on the server side, reducing the need for complex client-side code. However, it requires learning Elixir and the Phoenix framework, which might have a steeper learning curve for developers unfamiliar with functional programming.

##### Describe the Network Protocols this tech uses:

Phoenix LiveView utilizes WebSockets for real-time communication between clients and servers. This allows for instant updates and interactions without the need for page reloads which is useful for building web applications. Additionally, it uses HTTP for initial page loads and traditional web requests. The combination of WebSockets and HTTP allows for efficient, consistent transfer of data between two sources.

##### How does this match your team's interest and expertise?

This stack aligns well with our team's dislike of client-side JavaScript programming while enabline them to use their strong server-side development skills. Although it will require learning Elixir and the Phoenix framework which may be a challenge for those team members not familiar with the technology, the benefits of real-time capabilities and reduced client-side complexity make it an effective choice for our purposes. The declarative nature of LiveView also simplifies the development process, especially in our case due to limited interest in client-side programming, allowing our team to focus on building robust and interactive applications without the overhead of managing extensive client-side code.

### Describe your Server-Side Stack?
Describe each part below in 3--5 sentences. Make sure to include possible positives and negatives of your choices.

##### Describe the Teck Stack (frameworks/languages):

For the server-side tech stack, we will be using Crow with C++. Crow is an efficient web framework with a high speed performance that supports HTTP and WebSocket protocols. It will allow us to build efficient and scalable web services using modern C++ features. However, the limited support and advanced features may pose challenges for complex applications.

##### Describe the Network Protocols this tech uses:

Crow uses HTTP/1.1 and WebSockets. HTTP/1.1 is used for standard web communication, handling requests and responses between clients and servers. WebSockets provide real-time communication, which is crucial for any kind of interactive web application, especially those which facilitate talking between two users. This combination ensures consistent data transfer, which is important for web applications like the ones we are building.

##### How does this match your team's interest and expertise?

This stack aligns well with our team's strong expertise and interest in C++ and server side technologies. Using Crow allows the team to effectively utilize their existing skills in C++ while exploring modern web development practices. Although there may be a learning curve due to the framework's smaller community and limited resources for learning the framework, our team's proficiency in C++ and server side technologies will allow us to overcome these challenges fairly easily. Additionally, the use of C++ can lead to highly optimized and performant applications, which is a significant advantage for resource-intensive projects such as interactive web applications.