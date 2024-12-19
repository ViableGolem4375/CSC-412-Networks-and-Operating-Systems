#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <filesystem>
#include <algorithm>
#include <sys/stat.h>

namespace fs = std::filesystem;

struct LogEntry {
    std::string timestamp;
    std::string entry;

    bool operator<(const LogEntry& other) const {
        return timestamp < other.timestamp;
    }
};

void readLogFiles(const std::string& folderPath, std::vector<LogEntry>& logEntries) {
    for (const auto& entry : fs::directory_iterator(folderPath)) {
        if (entry.is_regular_file() && entry.path().extension() == ".txt") {
            std::ifstream logFile(entry.path());
            std::string line;
            while (std::getline(logFile, line)) {
                std::string timestamp = line.substr(0, line.find(','));
                logEntries.push_back({timestamp, line});
            }
        }
    }
}

void writeCombinedLogFile(const std::string& filePath, const std::vector<LogEntry>& logEntries) {
    std::ofstream outFile(filePath);
    for (const auto& entry : logEntries) {
        outFile << entry.entry << '\n';
    }
    outFile.close();
    chmod(filePath.c_str(), 0755);
}

int main() {
    std::string logFolder = "logFolder";
    std::string outputFilePath = logFolder + "/actions.txt";

    if (!fs::exists(logFolder)) {
        std::cerr << "Error: The directory '" << logFolder << "' does not exist." << std::endl;
        return 1;
    }

    std::vector<LogEntry> logEntries;
    readLogFiles(logFolder, logEntries);

    std::sort(logEntries.begin(), logEntries.end());

    writeCombinedLogFile(outputFilePath, logEntries);

    std::cout << "Combined log file created at " << outputFilePath << std::endl;

    return 0;
}