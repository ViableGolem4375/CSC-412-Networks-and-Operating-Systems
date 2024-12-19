#include <iostream>
#include <queue>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <vector>
#include <chrono>
#include <atomic>

// Define a 'Process' structure with necessary attributes
struct Process {
    int pid;            // Process ID
    int burstTime;      // Burst time required by the process
    int arrivalTime;    // Arrival time of the process
    int completionTime = 0; // Time at which the process completes execution
    int waitingTime = 0;    // Time spent waiting in the ready queue
    int turnaroundTime = 0; // Time from arrival to completion
};

// Global variables
std::mutex resourceMutex; // Mutex for protecting shared resource
int sharedResource = 0;   // Shared resource (e.g., a counter)

// Simulate the execution of a process, accessing the shared resource
void executeProcess(Process& process, int currentTime) {
    {
        // Lock to access the shared resource
        std::lock_guard<std::mutex> lock(resourceMutex);
        std::cout << "Process " << process.pid << " accessing shared resource." << std::endl;
        sharedResource += process.pid; // Modify the shared resource
        std::cout << "Shared Resource updated to: " << sharedResource << std::endl;
    }

    // Simulate process execution (outside critical section)
    std::cout << "Executing Process: " << process.pid << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(process.burstTime));

    process.completionTime = currentTime + process.burstTime;
    process.turnaroundTime = process.completionTime - process.arrivalTime;
    process.waitingTime = process.turnaroundTime - process.burstTime;

    std::cout << "Process " << process.pid << " execution complete." << std::endl;
}

// FCFS scheduling algorithm
void firstComeFirstServed(std::vector<Process>& processes) {
    int currentTime = 0;

    for (auto& process : processes) {
        currentTime = std::max(currentTime, process.arrivalTime); // Ensure time starts after arrival
        executeProcess(process, currentTime);
        currentTime += process.burstTime; // Update current time
    }
}

// Round Robin scheduling algorithm
void roundRobin(std::vector<Process>& processes, int timeQuantum) {
    std::queue<Process*> readyQueue;

    // Add all processes to the ready queue
    for (auto& process : processes) {
        readyQueue.push(&process);
    }

    int currentTime = 0;
    while (!readyQueue.empty()) {
        Process* current = readyQueue.front();
        readyQueue.pop();

        currentTime = std::max(currentTime, current->arrivalTime); // Ensure time starts after arrival
        int executionTime = std::min(timeQuantum, current->burstTime);

        {
            // Lock to access the shared resource
            std::lock_guard<std::mutex> lock(resourceMutex);
            std::cout << "Process " << current->pid << " accessing shared resource." << std::endl;
            sharedResource += current->pid * 2; // Modify the shared resource
            std::cout << "Shared Resource updated to: " << sharedResource << std::endl;
        }

        // Simulate execution
        std::cout << "Executing Process " << current->pid << " for " << executionTime << " seconds." << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(executionTime));

        current->burstTime -= executionTime;
        currentTime += executionTime;

        if (current->burstTime > 0) {
            readyQueue.push(current); // Requeue if the process still has remaining burst time
        } else {
            current->completionTime = currentTime;
            current->turnaroundTime = current->completionTime - current->arrivalTime;
            current->waitingTime = current->turnaroundTime - (current->burstTime + executionTime);
            std::cout << "Process " << current->pid << " execution complete." << std::endl;
        }
    }
}

// Calculate metrics
void calculateMetrics(const std::vector<Process>& processes) {
    int totalTurnaroundTime = 0;
    int totalWaitingTime = 0;
    int totalProcesses = processes.size();
    int totalCompletionTime = 0;

    for (const auto& process : processes) {
        totalTurnaroundTime += process.turnaroundTime;
        totalWaitingTime += process.waitingTime;
        totalCompletionTime = std::max(totalCompletionTime, process.completionTime);
    }

    double avgTurnaroundTime = static_cast<double>(totalTurnaroundTime) / totalProcesses;
    double avgWaitingTime = static_cast<double>(totalWaitingTime) / totalProcesses;
    double throughput = static_cast<double>(totalProcesses) / totalCompletionTime;

    std::cout << "\nMetrics:\n";
    std::cout << "Average Turnaround Time: " << avgTurnaroundTime << std::endl;
    std::cout << "Average Waiting Time: " << avgWaitingTime << std::endl;
    std::cout << "Throughput: " << throughput << " processes/unit time" << std::endl;
}

int main() {
    // Initialize process details
    std::vector<Process> processes = {
        {1, 5, 0},
        {2, 3, 1},
        {3, 8, 2},
        {4, 6, 3}
    };

    std::cout << "Starting First-Come, First-Served Scheduling..." << std::endl;
    firstComeFirstServed(processes);
    calculateMetrics(processes);

    std::cout << "\nStarting Round Robin Scheduling..." << std::endl;
    int timeQuantum = 2; // Set time quantum for Round Robin
    roundRobin(processes, timeQuantum);
    calculateMetrics(processes);

    return 0;
}