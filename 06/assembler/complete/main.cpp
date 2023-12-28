#include <fstream>
#include <iostream>
#include <string>
#include <map>
#include <bitset>
using namespace std;

map<string, string> compMap;
map<string, string> destMap;
map<string, string> jumpMap;

void getMapFromFile(string filename, map<string, string>& refMap) {
    ifstream file("maps/" + filename + ".txt");

    int n;
    file >> n;

    for (int i = 0; i < n; i++) {
        string keyword, bits;
        file >> keyword >> bits;
        refMap[keyword] = bits;
    }

    file.close();
}

class Code {
    public:
        Code() {}

        void setLine(string line) {
            destAssembly = "null";
            compAssembly = "null";
            jumpAssembly = "null";

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
                else {
                    currentSubstring += line[i];
                }

                if (i == (line.size() - 1)) {
                    if (hasJump) jumpAssembly = currentSubstring;
                    else compAssembly = currentSubstring;
                }
            }
        }

        string dest() {return destMap[destAssembly];}
        string comp() {return compMap[compAssembly];}
        string jump() {return jumpMap[jumpAssembly];}

    private:
        string destAssembly;
        string compAssembly;
        string jumpAssembly;
};

class Parser {
    public:
        Parser(ifstream& fileStream) : inputStream(fileStream) {
            whitespaceEnding = true;
        }

        bool hasMoreCommands() {
            return inputStream.peek() != EOF;
        }

        bool advance() {
            do {
                getline(inputStream, currentLine);
                removeWhitespace();
            } while (currentLine.size() == 0 && hasMoreCommands());

            computeParser.setLine(currentLine);

            return currentLine.size() == 0;
        }

        string commandType() {
            char firstSymbol = currentLine[0];

            if (firstSymbol == '@') return "A_COMMAND";
            else if (firstSymbol == '(') return "L_COMMAND";
            else return "C_COMMAND";
        }

        string symbol() {
            string addressData = currentLine.substr(1); 
            if (addressData[addressData.size() - 1] == ')') {
                return addressData.substr(0, addressData.size() - 1);
            }
            else return addressData;
        }

        string dest() {return computeParser.dest();}

        string comp() {return computeParser.comp();}

        string jump() {return computeParser.jump();}

        void resetParser() {
            inputStream.clear();
            inputStream.seekg(0);
        }

    private:
        ifstream& inputStream;
        string currentLine;
        Code computeParser;
        bool whitespaceEnding;

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
};

int main() {
    ifstream inputFile("test/max/Max.asm");
    ofstream outputFile("output.hack");
    map<string, string> symbolTable;

    Parser parser(inputFile);

    // First pass
    int codeLine = 0;
    getMapFromFile("predefined", symbolTable);

    do {
        bool whitespaceEnding = parser.advance();
        if (whitespaceEnding) break;

        string commandType = parser.commandType();
        if (commandType == "L_COMMAND") {
            string symbol = parser.symbol();

            if (symbolTable.count(symbol) == 0) {
                symbolTable[symbol] = to_string(codeLine);
            }
        }
        else codeLine++;
    } while (parser.hasMoreCommands());

    parser.resetParser();

    // Second pass
    getMapFromFile("compMap", compMap);
    getMapFromFile("destMap", destMap);
    getMapFromFile("jumpMap", jumpMap);

    int variablePos = 16;
    do {
        bool whitespaceEnding = parser.advance();
        if (whitespaceEnding) break;

        if (parser.commandType() == "C_COMMAND") {
            outputFile << "111";
            outputFile << parser.comp();
            outputFile << parser.dest();
            outputFile << parser.jump();
        }
        else if (parser.commandType() == "A_COMMAND") {
            string symbol = parser.symbol();

            outputFile << '0';
            if (isdigit(symbol[0]) == 0) {
                if (symbolTable.count(symbol) == 0) {
                    symbolTable[symbol] = variablePos;
                    variablePos++;
                }

                bitset<15> bs(stoi(symbolTable[symbol]));
                outputFile << bs.to_string();
            }
            else {
                bitset<15> bs(stoi(symbol));
                outputFile << bs.to_string();
            }
        }

        if (parser.commandType() != "L_COMMAND") outputFile << endl;

    } while (parser.hasMoreCommands());

    inputFile.close();
    outputFile.close();

    return 0;
}

