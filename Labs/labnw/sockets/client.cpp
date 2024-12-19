#include "common.h"

int main(int argc, const char *argv[]) {
    // Check for command-line arguments.
    checkargs(argc, argv);

    // Variable declarations.
    int obj_socket, reader;
    struct sockaddr_in serv_addr;
    const char *message = "CLIENT: I am sending a message!";
    char buffer[1024] = {0};

    // Create a socket.
    // If the socket creation fails, print an error message.
    if ((obj_socket = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("Socket creation error");
        return -1;
    }

    // Define the server address.
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);

    const char *ip_address = "127.0.0.1"; // Localhost IP address.

    // Convert IP address from text to binary form.
    if (inet_pton(AF_INET, ip_address, &serv_addr.sin_addr) <= 0) {
        perror("Invalid address");
        return -1;
    }

    // Connect to the server.
    // If the connection fails, print an error message.
    if (connect(obj_socket, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        perror("Connection failed");
        return -1;
    }

    // Send a message to the server.
    send(obj_socket, message, strlen(message), 0);
    std::cout << "CLIENT: Message has been sent!" << std::endl;

    // Read the server's response.
    reader = read(obj_socket, buffer, 1024);
    if (reader > 0) {
        std::cout << "CLIENT: printing the buffer..." << std::endl;
        std::cout << buffer << std::endl;
    }

    // Close the sockets after communication.
    close(obj_socket);

    return 0;
}