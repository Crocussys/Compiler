#include <iostream>
<<<<<<< HEAD
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
=======
#include <fstream>
#include <string>
#include <vector>

using namespace std;
const string SERVICE_WORDS[] = {"dim", "integer", "real", "boolean", "ass", "if", "then", "else", "for", "to", "do", "while", "read", "write", "or", "and", "not", "true", "false"};
const string SEPARATORS[] = {"<>", "=", "<", "<=", ">", ">=", "+", "-", "*", "/", "{", ";", "}", ",", ":", "\n", ".", "(", ")", " "};
const string ALPHAS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_";
const string NUMBERS = "012345689";
vector<string> variables = {};
vector<int> numbers = {};
vector<vector<unsigned long>> lexems = {};

bool is_alpha(char symbol){
    for (int i = 0; i < ALPHAS.length(); i++){
        if(symbol == ALPHAS[i]) return true;
    }
    return false;
}

bool is_number(char symbol){
    for (int i = 0; i < NUMBERS.length(); i++){
        if(symbol == NUMBERS[i]) return true;
    }
    return false;
}

bool search_seperator(string separator){
    for (unsigned long i = 0; i < size(SEPARATORS); i++){
        if (separator == SEPARATORS[i]){
            cout << "1." << i << " " << separator << endl;
            lexems.push_back({1, i});
            return true;
        }
    }
    return false;
}

bool add_seperator(string separator){
    if(!search_seperator(separator)){
        cout << "ERROR!" << endl;   // Error
        return false;
    }
    return true;
}

bool add_number(string number){
    int num = 0;
    bool flag = false;
    for (int i = 0; i < number.length(); i++){
        for (int j = 0; j < 10; j++){
            if (number[i] == NUMBERS[j]){
                num = num * 10 + j;
                flag = true;
            }
        }
        if (!flag) {
            cout << "ERROR!" << endl;   // Error
            return false;
        }
    }
    cout << "2 " << num << endl;
    numbers.push_back(num);
    lexems.push_back({2, numbers.size() - 1});
    return true;
>>>>>>> bea0c50 (ЛА v.1)
}

int main(int argc, char *argv[])
{
<<<<<<< HEAD
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
=======
    if (argc < 2){
        cout << "Not enough arguments!" << endl;
        return -1;
    }
    fstream file(argv[1]);
    if (!file){
        cout << "Failed to open file!" << endl;
        return -2;
    }
    string file_text;
    string temp = "";
    while (!file.eof()){
        getline(file, temp);
        file_text += temp + "\n";
    }
    file.close();
    temp = "";
    int flag = 0;  // 1 - Переменная(слово), 2 - Разделитель, 3 - число
    bool comment = false;
    for (int i = 0; i < file_text.length(); i++){
        char symbol = file_text[i];
        if (comment){
            temp = temp[1];
            temp += symbol;
            if (temp == "*/"){
                comment = false;
                temp = "";
            }
            continue;
        }
        if (symbol == '\t') symbol = ' ';
        if (is_alpha(symbol) or (is_number(symbol) and flag == 1)){
            if (flag == 2){
                add_seperator(temp);
                temp = "";
            }
            else if (flag == 3){
                add_number(temp);
                temp = "";
            }
            flag = 1;
        }
        else if (is_number(symbol)){
            if (flag == 2){
                add_seperator(temp);
                temp = "";
            }
            else if (flag == 1){
                cout << "3 " << temp << endl;
                variables.push_back(temp);
                lexems.push_back({3, variables.size() - 1});
                temp = "";
            }
            flag = 3;
        }
        else {
            if (flag == 1){
                cout << "3 " << temp << endl;
                variables.push_back(temp);
                lexems.push_back({3, variables.size() - 1});
                temp = "";
            }
            else if (flag == 3){
                add_number(temp);
                temp = "";
            }
            flag = 2;
        }
        temp += symbol;
        if (flag == 1 and temp.length() < 8){
            for (unsigned long i = 0; i < size(SERVICE_WORDS); i++){
                if (temp == SERVICE_WORDS[i]){
                    cout << "0." << i << " " << temp << endl;
                    lexems.push_back({0, i});
                    temp = "";
                    flag = 0;
                    break;
                }
            }
        }
        if (flag == 2){
            if (temp == "/*") {
                comment = true;
                continue;
            }
            if (temp[0] == ' ' and temp[1] == ' '){
                temp = temp[0];
                continue;
            }
        }
        if (flag == 2 and temp.length() == 2){
            if (search_seperator(temp)){
                temp = "";
                flag = 0;
            }
            if (flag != 0 and !comment){
                string onece_sep = "";
                onece_sep += temp[0];
                if (add_seperator(onece_sep)){
                    temp = temp[1];
                    flag = 2;
                }
            }
        }
    }
    cout << "===========================================================" << endl;
    cout << "SERVICE_WORDS:" << endl;
    for (int i = 0; i < size(SERVICE_WORDS); i++) cout << i << ". " << SERVICE_WORDS[i] << endl;
    cout << endl << "SEPARATORS:" << endl;
    for (int i = 0; i < size(SEPARATORS); i++) cout << i << ". " << SEPARATORS[i] << endl;
    cout << endl << "variables:" << endl;
    for (int i = 0; i < variables.size(); i++) cout << i << ". " << variables[i] << endl;
    cout << endl << "numbers:" << endl;
    for (int i = 0; i < numbers.size(); i++) cout << i << ". " << numbers[i] << endl;
    cout << "===========================================================" << endl;
    for (int i = 0; i < lexems.size(); i++) cout << "(" << lexems[i][0] << ", " << lexems[i][1] << ") ";
    cout << endl;
    return 0;
>>>>>>> bea0c50 (ЛА v.1)
}
