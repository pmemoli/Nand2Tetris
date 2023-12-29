#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;

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
            string command = command();

            vector<string> arCom = {
                "add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"
            };

            if (count(arCom.begin(), arCom.end(), command)) return "C_ARITHMETIC";
            else if (command == "push") return "C_PUSH";
            else if (command == "pop") return "C_POP";
        }

        string command() {return command;} 

        string arg1() {return arg1;}

        int arg2() {return arg2;}

    private:
        ifstream& inputStream;
        string currentLine;
        string command;
        string arg1;
        string arg2;

        void removeWhitespace() {
            string cleanedLine = "";

            for (int i = 0; i < currentLine.size(); i++) {
                if (currentLine[i] == '/') break;
                else if (currentLine[i] != ' ') {
                    cleanedLine += currentLine[i];
                }
            }

            currentLine = cleanedLine;
        }

        void parseCommand() {
            string tempString = "";
            int foundComponents = 0;

            for (int i = 0; i < currentLine.size(); i++) {
                if (currentLine[i] == ' ' || i == (currentLine.size() - 1)) {
                    if (foundComponents == 0) command = tempString;
                    if (foundComponents == 1) arg1 = tempString;
                    if (foundComponents == 2) arg2 = tempString;

                    foundComponents++;
                    tempString = "";
                }

                else {
                    substring += currentLine[i];
                }
            }
        }
};

int main() {

    return 0;
}

