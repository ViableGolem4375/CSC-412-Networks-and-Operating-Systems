# Chatting

Please answer the following questions. For each question please provide 3--5 sentences.

### Does the code behave like a normal ChatApp? (desribe why or why not)

The code has some similarities to a normal chat app in that it utilized WebSockets in order to connect two clients and allow them to broadcast messages to each other, however it is missing quite a few things that a normal chat app would likely have. Firstly it lacks any kind of persistent storage for messages, anything sent within this chat app is broadcasted in real time and is not stored anywhere. Secondly this app features no user authentication or registration which is abnormal for a chat app. Lastly, the app likely would not scale well trying to work with more users as currently the way it is set up, it facilitates talking between two specific clients with no way for anyone else to use the app.

### Describe why you prefer the JS/WebSocket or the HTMX implementation?

I personally prefer the HTMX implementation of the code. I like this implementation bettwe mostly because it is significantly simpler to understand and read through as opposed to the JS/WebSocket implementation. Overall the HTMX version of the code appears much cleaner and does the same thing in significantly less lines of code. This makes it both (presumably) easier to write and easier to read through for understanding. The HTMX version also appears to require a lot less individual steps compared to the WebSocket version, this seems nice as it would result in less time writing tedious repeat code in larger scale applications.

### Why does our Crow App use port 9095? (this is a tricky one, think of your dev/server environment)

The Crow App uses port 9095 for functionality within the dev environment. This being that since this application is being run within our dev environment and Docker container, it needs to map a chosen internal port within the container to a port on the host machine. Considering that if it attempts to use a port which is already in use, the Docker container will fail to start entirely, it is important to use a port which is not already in use. This means that port 9095 is a good choice as lower number ports are more well-known and more frequently used, this means that if one of these were to be chosen, it could result in Docker crashing out and ceasing to work correctly.