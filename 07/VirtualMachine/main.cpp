#include <algorithm>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <regex>
#include <map>
using namespace std;

map<string, string> arithmeticMap;
map<string, string> memoryMap;

void assemblyMap(const string& filename, map<string, string>& commandMap) {
    ifstream file("assemblyMaps/" + filename + ".txt");
    string line, key, value;

    while (getline(file, line)) {
        if (line.substr(0, 7) == "command") {
            if (key.size() > 0) {
                value.pop_back();

                commandMap[key] = value;
                value = "";
            }

            key = line.substr(8);
        }

        else {
            value += line + "\n";
        }
    }

    value.pop_back();

    commandMap[key] = value;
}

class Parser {
    public:
        Parser(ifstream& inputStream) : inputStream(inputStream) { }

        bool hasMoreCommands() {
            return inputStream.peek() != EOF;
        }

        bool advance() {
            do {
                getline(inputStream, currentLine);
                removeWhitespace();
            } while (currentLine.size() == 0 && hasMoreCommands());

            parseCommand();

            return currentLine.size() == 0;
        }

        string commandType() {
            vector<string> arCom = {
                "add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"
            };

            if (count(arCom.begin(), arCom.end(), command_)) return "C_ARITHMETIC";
            else if (command_ == "push") return "C_PUSH";
            else if (command_ == "pop") return "C_POP";
        }

        string command() {return command_;} 

        string arg1() {return arg1_;}

        int arg2() {return arg2_;}

    private:
        ifstream& inputStream;
        string currentLine;
        string command_;
        string arg1_;
        int arg2_;

        void removeWhitespace() {
            string cleanedLine = "";

            for (int i = 0; i < currentLine.size(); i++) {
                if (currentLine[i] == '/') break;
                cleanedLine += currentLine[i];
            }

            currentLine = cleanedLine;
        }

        void parseCommand() {
            command_ = "";
            arg1_ = "";
            arg2_ = -1;

            string tempString = "";
            int foundComponents = 0;

            for (int i = 0; i < currentLine.size(); i++) {
                if (currentLine[i] == ' ' || i == (currentLine.size() - 1)) {
                    if (i == (currentLine.size() - 1)) tempString += currentLine[i];

                    if (foundComponents == 0) command_ = tempString;
                    if (foundComponents == 1) arg1_ = tempString;
                    if (foundComponents == 2) arg2_ = stoi(tempString);

                    foundComponents++;
                    tempString = "";
                }

                else {
                    tempString += currentLine[i];
                }
            }
        }
};

class CodeWriter {
    public:
        CodeWriter(ofstream& outputFile) : outputStream(outputFile) {}

        void setFileName(string fileName) {}

        void writeArithmetic(string command, int commandNumber) {
            string assemblyCode = arithmeticMap[command];
            assemblyCode = regex_replace(assemblyCode, regex("X"), to_string(commandNumber));

            outputStream << assemblyCode;
        }

        void writePushPop(string command, string segment, int index) {
            string key = command + " " + segment;
            string assemblyCode = memoryMap[key];
            assemblyCode = regex_replace(assemblyCode, regex("X"), to_string(index));

            outputStream << assemblyCode;
        }

        void close() {outputStream.close();}

    private:
        ofstream& outputStream;
};

int main() {
    ifstream vmFile("input.txt");
    ifstream asmFile("output.txt");

    Parser parser(vmFile);
    CodeWriter writer(asmFile);

    assemblyMap("arithmeticMap", arithmeticMap);
    assemblyMap("memoryMap", memoryMap);

    do {
        bool whitespaceEnding = parser.advance();
    } while (parser.hasMoreCommands());

    return 0;
}

