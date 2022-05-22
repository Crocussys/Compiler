#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;
const string SERVICE_WORDS[] = {"dim", "integer", "real", "boolean", "ass",
                                "if", "then", "else", "for", "to", "do",
                                "while", "read", "write", "or", "and", "not",
                                "true", "false"};
const string SEPARATORS[] = {"<>", "=", "<", "<=", ">", ">=", "+", "-", "*",
                             "/", "{", ";", "}", ",", ":", "\n", ".", "(",
                             ")"};
const string ALPHAS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_";
const string NUMBERS = "012345689";
vector<string> variables = {};
vector<int> numbers = {};
vector<vector<unsigned long>> lexems = {};

bool type(int iter){
    if (lexems[iter][0] != 0) return false;
    switch (lexems[iter][1]){
    case 1: return true;
    case 2: return true;
    case 3: return true;
    default: return false;
    }
}

bool identifier(int iter){
    if (lexems[iter][0] == 3) return true;
    else return false;
}

int description(int iter){
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 0)) return -1;
    iter++;
    if (!identifier(iter)) return -1;
    iter++;
    while (lexems[iter][0] == 1 and lexems[iter][1] == 13) {
        iter++;
        if (!identifier(iter)) return -1;
        iter++;
    }
    if (type(iter)) return iter;
    else return -1;
}

int compound(int iter){

}

int assignments(int iter){

}

int conditional_oprt(int iter){

}

int fixed_cycle(int iter){

}

int conditional_loop(int iter){

}

int input(int iter){

}

int output(int iter){

}

int opertr(int iter){
    int i = compound(iter);
    if (i != -1) return i;
    i = assignments(iter);
    if (i != -1) return i;
    i = conditional_oprt(iter);
    if (i != -1) return i;
    i = fixed_cycle(iter);
    if (i != -1) return i;
    i = conditional_loop(iter);
    if (i != -1) return i;
    i = input(iter);
    if (i != -1) return i;
    i = output(iter);
    if (i != -1) return i;
    return -1;
}

bool program(){
    int flag = 0;
    for (int i = 0; i < lexems.size(); i++){
        if (lexems[i][0] == 1 and lexems[i][1] == 10){
            for (int j = i; j < lexems.size(); j++){
                if (flag != 0){
                    if (lexems[j][0] == 1 and lexems[j][1] == 11){
                        flag = 2;
                        continue;
                    }
                    else return false;
                }
                int iter = description(j);
                if (iter != -1){
                    j = iter;
                    flag = 1;
                    continue;
                }
                iter = opertr(j);
                if (iter != -1){
                    j = iter;
                    flag = 1;
                    continue;
                }
                if (flag == 0) return false;
                if (lexems[j][0] == 1 and lexems[j][1] == 12){
                    return true;
                }
                return false;
            }
            break;
        }
    }
    return false;
}
// ============================================================================
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
}

void add_variable(string variable){
    cout << "3 " << variable << endl;
    variables.push_back(variable);
    lexems.push_back({3, variables.size() - 1});
}

int main(int argc, char *argv[])
{
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
                flag = 0;
            }
            continue;
        }
        if (symbol == ' ' or symbol == '\t'){
            if (flag == 1) add_variable(temp);
            else if (flag == 2) add_seperator(temp);
            else if (flag == 3) add_number(temp);
            temp = "";
            flag = 0;
            continue;
        }
        if (is_alpha(symbol) or (is_number(symbol) and flag == 1)){
            if (flag == 2) add_seperator(temp);
            else if (flag == 3) add_number(temp);
            if (flag != 1) temp = "";
            flag = 1;
        }
        else if (is_number(symbol)){
            if (flag == 2) add_seperator(temp);
            else if (flag == 1) add_variable(temp);
            if (flag != 3) temp = "";
            flag = 3;
        }
        else {
            if (flag == 1) add_variable(temp);
            else if (flag == 3) add_number(temp);
            if (flag != 2) temp = "";
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
        if (flag == 2 and temp.length() == 2){
            if (temp == "/*") {
                comment = true;
                continue;
            }
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
    cout << "========================================================" << endl;
    cout << "SERVICE_WORDS:" << endl;
    for (int i = 0; i < size(SERVICE_WORDS); i++)
        cout << i << ". " << SERVICE_WORDS[i] << endl;
    cout << endl << "SEPARATORS:" << endl;
    for (int i = 0; i < size(SEPARATORS); i++)
        cout << i << ". " << SEPARATORS[i] << endl;
    cout << endl << "variables:" << endl;
    for (int i = 0; i < variables.size(); i++)
        cout << i << ". " << variables[i] << endl;
    cout << endl << "numbers:" << endl;
    for (int i = 0; i < numbers.size(); i++)
        cout << i << ". " << numbers[i] << endl;
    cout << "========================================================" << endl;
    for (int i = 0; i < lexems.size(); i++)
        cout << "(" << lexems[i][0] << ", " << lexems[i][1] << ") ";
    cout << endl << "================================================" << endl;
    if(program()){
        cout << "Satisfies the syntax of the program" << endl;
        return 1;
    }
    else {
        cout << "Doesn't match program syntax" << endl;
        return 0;
    }
}
