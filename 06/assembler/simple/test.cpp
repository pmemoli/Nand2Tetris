#include <fstream>
#include <string>
#include <iostream>
#include <map>
using namespace std;

/* void fillMaps() { */
/*     ifstream compMapStream(".maps/compMap.txt"); */
/*     ifstream destMapStream(".maps/destMap.txt"); */
/*     ifstream jumpMapStream(".maps/jumpMap.txt"); */
/* } */


string removeWhitespace(string currentLine) {
    string cleanedLine = "";

    for (int i = 0; i < currentLine.size(); i++) {
        if (currentLine[i] == '/') break;
        else if (currentLine[i] != ' ') {
            cleanedLine += currentLine[i];
        }
    }

    return cleanedLine;
}

int main() {
    cout << removeWhitespace("A  B // XD") << endl;

    return 0;
}
