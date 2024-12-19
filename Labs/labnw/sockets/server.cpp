#include "common.h"

int main(int argc, const char *argv[]) {
    // Check for command-line arguments.
    checkargs(argc, argv);

    // Variable declarations.
    int obj_server, sock;
    struct sockaddr_in address;
    int opted = 1;
    socklen_t address_length = sizeof(address);
    char buffer[1024] = {0};
    const char *message = "Hi I am a message from the server!";

    // Create a socket.
    // If the socket creation fails, print an error message.
    if ((obj_server = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
        pserror("Opening of Socket Failed !");
    }

    // Set socket options.
    // If the socket options creation fails, print an error message.
    if (setsockopt(obj_server, SOL_SOCKET, SO_REUSEADDR, &opted, sizeof(opted))) {
        pserror("Can't set the socket");
    }

    // Define the server address.
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);

    // Bind the socket to the address.
    // If the socket binding fails, print an error message.
    if (bind(obj_server, (struct sockaddr *)&address, sizeof(address)) < 0) {
        pserror("Binding of socket failed !");
    }

    // Listen for incoming connections.
    // If there are somehow less than 0 incoming connections, print an error message.
    if (listen(obj_server, 3) < 0) {
        pserror("Can't listen from the server !");
    }

    // Accept a connection from a client.
    if ((sock = accept(obj_server, (struct sockaddr *)&address, &address_length)) < 0) {
        pserror("Accept");
    }

    // Read the client's message.
    ssize_t reader = read(sock, buffer, 1024);
    if (reader > 0) {
        std::cout << buffer << std::endl;
    }

    // Send a response to the client.
    send(sock, message, strlen(message), 0);
    std::cout << "SERVER: I just sent a message to the client!" << std::endl;

    // Close the sockets and server after communication.
    close(sock);
    close(obj_server);

    return 0;
}