#include <fstream>
#include <iostream>
#include <string>
#include <map>
using namespace std;

// Maps for C-Instructions
map<string, string> compMap;
map<string, string> destMap;
map<string, string> jumpMap;

class Code {
    public:
        Code(line) {
            setLine(string line);
        }

        void setLine(string line) {
            processLine(line);
        }

        string dest() {return destMap[destAssembly];}
        string comp() {return compMap[compAssembly];}
        string jump() {return jumpMap[jumpAssembly];}

    private:
        string destAssembly;
        string compAssembly;
        string jumpAssembly;

        void processLine(string line) {
            string currentSubstring = "";
            bool hasJump = false;

            for (int i = 0; i < line.size(); i++) {
                if (line[i] == '=') {
                    destAssembly = currentSubstring;
                    currentSubstring = "";
                }
                else if (line[i] == ';') {
                    compAssembly = currentSubstring;
                    currentSubstring = "";
                    hasJump = true;
                }
                else if (i == (line.size() - 1)) {
                    if (hasJump) jumpAssembly = currentSubstring;
                    else compAssembly = currentSubstring;
                }
                else {
                    currentSubstring += line[i];
                }
            }
        }
}

class Parser {
    public:
        Parser(ifstream inputStream) : inputStream(inputStream) {
            inputStream = inputStream;
            advance();
        }

        bool hasMoreCommands() {
            return inputStream.peek() != EOF;
        }

        void advance() {
            do {
                getLine(inputStream, currentLine);
                removeWhitespace();
            } while (currentLine.size() != 0 || hasMoreCommands());
        }

        string commandType() {
            char firstSymbol = currentLine[0];

            if (firstSymbol == '@') return "A_COMMAND";
            else if (firstSymbol == '(') return "L_COMMAND";
            else return "C_COMMAND";
        }

        string symbol() {
            return currentLine.substr(1);
        }

        string dest() {}

        string comp() {}

        string jump() {}

    private:
        ifstream inputStream;
        string currentLine;
        Code computeParser;

        void removeWhitespace() {

        }
}

int main() {
    ifstream inputFile("input.txt");
    ofstream outputFile("output.txt");

    string line;
    while(getline(inputFile, line)) {
        cout << line << endl;
    }

    inputFile.close();
    outputFile.close();

    return 0;
}
