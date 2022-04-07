#include <iostream>
#include <string>
#include <fstream>
#include <vector>

using namespace std;

bool is_letter(char ch){
    string letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    for(int i = 0; i < 52; i++) if(letters[i] == ch) return true;
    return false;
}

bool is_number(char ch){
    string numbers = "0123456789";
    for(int i = 0; i < 10; i++) if(numbers[i] == ch) return true;
    return false;
}

int look(vector<pair<int, string>> &lexemes, string str, int param){
    for(unsigned long i = 0; i < lexemes.size(); i++){
        pair<int, string> lexeme = lexemes[i];
        if(lexeme.first == param and lexeme.second == str) return i;
    }
    return -1;
}

int put(vector<pair<int, string>> &lexemes, string str, int param){
    int ans = look(lexemes, str, param);
    if(ans == -1){
        lexemes.push_back(make_pair(param, str));
        return lexemes.size() - 1;
    }else return ans;
}

void out(int first, int second){
    fstream file("lexemes.txt", ios_base::app);
    if(!file.is_open()){
        cout << "The file was not found or cannot be accessed." << endl;
        throw -3;
    }
    file << first << " " << second << endl;
    file.close();
}

int char_to_int(char ch){
    string numbers = "0123456789";
    for(int i = 0; i < 10; i++) if(numbers[i] == ch) return i;
    return -1;
}

int main(int argc, char *argv[])
{
    if(argc < 2){
        cout << "Not enough arguments. Required: 2" << endl;
        return -1;
    }
    fstream lex_file("lexemes.txt", ios_base::out | ios_base::trunc);
    if(!lex_file.is_open()){
        cout << "Failed to create file." << endl;
        return -2;
    }
    lex_file.close();
    fstream file(argv[1], ios_base::in);
    if(!file.is_open()){
        cout << "The file was not found or cannot be accessed." << endl;
        return -3;
    }


    vector<string> keywords = {"dim", "integer", "real", "boolean", "ass", "if", "then", "else", "for", "to", "do", "while", "read", "write", "true", "false"};
    vector<string> separators = {"<>", "=", "<", "<=", ">", ">=", "+", "-", "or", "*", "/", "and", "not", "{", "}", ";", ",", ":"};
    vector<string> names = {};

    char ch;
    string str;
    int integer;
    vector<pair<int, string>> lexemes;
    int z;
    while(!file.eof()){
        file >> ch;
        if(ch == ' ') continue;
        if(is_letter(ch)){
            str = "";
            while(is_letter(ch) or is_number(ch)){
                str += ch;
                file >> ch;
            }
            file.seekg(-1, ios_base::cur);
            z = look(lexemes, str, 0);
            if(z == -1) out(4, put(lexemes, str, 2));
            else out(1, z);
            continue;
        }
        if(is_number(ch)){
            integer = char_to_int(ch);
            file >> ch;
            while(is_number(ch)){
                integer = integer * 10 + char_to_int(ch);
                file >> ch;
            }
            out(3, put(lexemes, str, 2));
            continue;
        }

        //Тут будет что-то ещё

        str = "";
        str += ch;
        z = look(lexemes, str, 1);
        if(z == -1){
            cout << "Syntax error" << endl;
            file.close();
            return 0;
        }else out(2, z);
    }

    cout << "Keywords:" << endl;
    for(unsigned long i = 0; i < keywords.size(); i++)
        cout << i << ". " << keywords[i] << endl;
    cout << endl << "Separators:" << endl;
    for(unsigned long i = 0; i < separators.size(); i++)
        cout << i << ". " << separators[i] << endl;
    cout << endl << "Names:" << endl;
    for(unsigned long i = 0; i < names.size(); i++)
        cout << i << ". " << names[i] << endl;
    cout << endl << "lexemes:" << endl;
    for(unsigned long i = 0; i < lexemes.size(); i++)
        cout << lexemes[i].first << " - " << lexemes[i].second << endl;

    file.close();
    return 1;
}
