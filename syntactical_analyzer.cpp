#include <vector>
#include "syntactical_analyzer.h"

using namespace std;

Syntactical_analyzer::Syntactical_analyzer(vector<vector<unsigned long>> lxms)
{
    lexems = lxms;
}

bool Syntactical_analyzer::type(int iter){
    if (lexems[iter][0] != 0) return false;
    switch (lexems[iter][1]){
    case 1: return true;
    case 2: return true;
    case 3: return true;
    default: return false;
    }
}

bool Syntactical_analyzer::identifier(int iter){
    if (lexems[iter][0] == 3) return true;
    else return false;
}

bool Syntactical_analyzer::relationship_group(int iter){
    if (lexems[iter][0] != 1) return false;
    switch (lexems[iter][1]){
    case 0: return true;
    case 1: return true;
    case 2: return true;
    case 3: return true;
    case 4: return true;
    case 5: return true;
    default: return false;
    }
}

bool Syntactical_analyzer::addition_group(int iter){
    if (lexems[iter][0] == 1 and
            (lexems[iter][1] == 6 or lexems[iter][1] == 7)) return true;
    else if (lexems[iter][0] == 0 and lexems[iter][1] == 14) return true;
    else return false;
}

bool Syntactical_analyzer::multiplication_group(int iter){
    if (lexems[iter][0] == 1 and
            (lexems[iter][1] == 8 or lexems[iter][1] == 9)) return true;
    else if (lexems[iter][0] == 0 and lexems[iter][1] == 15) return true;
    else return false;
}

bool Syntactical_analyzer::unary_operation(int iter){
    if (lexems[iter][0] == 0 and lexems[iter][1] == 16) return true;
    else return false;
}

bool Syntactical_analyzer::integer(int iter){

}

bool Syntactical_analyzer::real(int iter){

}

bool Syntactical_analyzer::number(int iter){
    if (integer(iter) or real(iter)) return true;
    else return false;
}

bool Syntactical_analyzer::boolean_constant(int iter){
    if (lexems[iter][0] == 0 and
            (lexems[iter][1] == 17 or lexems[iter][1] == 18)) return true;
    else return false;
}

int Syntactical_analyzer::factor(int iter){
    if (lexems[iter][0] == 3) return iter;
    int i = number(iter);
    if (i != -1) return i;
    if (boolean_constant(iter)) return iter;
    if (unary_operation(iter)){
        iter++;
        i = factor(iter);
        if (i != -1) return i;
        else return -1;
    }
    if (lexems[iter][0] == 1 and lexems[iter][1] == 17){
        iter++;
        int i = expression(iter);
        if (i == -1) return -1;
        iter = i + 1;
        if (!(lexems[iter][0] == 1 and lexems[iter][1] == 18)) return -1;
        else return iter;
    }
    return false;
}

int Syntactical_analyzer::term(int iter){
    int i = factor(iter);
    if (i == -1) return -1;
    iter = i;
    while (multiplication_group(iter + 1)){
        iter += 2;
        i = factor(iter);
        if (i == -1) return -1;
        iter = i;
    }
    return iter;
}

int Syntactical_analyzer::operand(int iter){
    int i = term(iter);
    if (i == -1) return -1;
    iter = i;
    while (addition_group(iter + 1)){
        iter += 2;
        i = term(iter);
        if (i == -1) return -1;
        iter = i;
    }
    return iter;
}

int Syntactical_analyzer::expression(int iter){
    int i = operand(iter);
    if (i == -1) return -1;
    iter = i;
    while (relationship_group(iter + 1)){
        iter += 2;
        i = operand(iter);
        if (i == -1) return -1;
        iter = i;
    }
    return iter;
}

int Syntactical_analyzer::description(int iter){
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

int Syntactical_analyzer::compound(int iter){
    int i = opertr(iter);
    if (i == -1) return -1;
    iter = i;
    while (lexems[iter + 1][0] == 1 and (lexems[iter + 1][1] == 14 or
                                         lexems[iter + 1][1] == 15)){
        iter += 2;
        i = opertr(iter);
        if (i == -1) return -1;
        iter = i;
    }
    return iter;
}

int Syntactical_analyzer::assignments(int iter){
    if (lexems[iter][0] != 3) return -1;
    iter++;
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 4)) return -1;
    iter++;
    int i = expression(iter);
    if (i != -1) return i;
    else return -1;
}

int Syntactical_analyzer::conditional_oprt(int iter){
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 5)) return -1;
    iter++;
    int i = expression(iter);
    if (i == -1) return -1;
    iter = i + 1;
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 6)) return -1;
    iter++;
    i = opertr(iter);
    if (i == -1) return -1;
    iter = i;
    if (lexems[iter + 1][0] == 0 and lexems[iter + 1][1] == 7){
        iter += 2;
        i = opertr(iter);
        if (i == -1) return -1;
        iter = i;
    }
    return iter;
}

int Syntactical_analyzer::fixed_cycle(int iter){
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 8)) return -1;
    iter++;
    int i = assignments(iter);
    if (i == -1) return -1;
    iter = i + 1;
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 9)) return -1;
    iter++;
    i = expression(iter);
    if (i == -1) return -1;
    iter = i + 1;
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 10)) return -1;
    iter++;
    i = opertr(iter);
    if (i == -1) return -1;
    else return i;
}

int Syntactical_analyzer::conditional_loop(int iter){
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 11)) return -1;
    iter++;
    int i = expression(iter);
    if (i == -1) return -1;
    iter = i + 1;
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 10)) return -1;
    iter++;
    i = opertr(iter);
    if (i == -1) return -1;
    else return i;
}

int Syntactical_analyzer::input(int iter){
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 12)) return -1;
    iter++;
    if (!(lexems[iter][0] == 1 and lexems[iter][1] == 17)) return -1;
    iter++;
    if (lexems[iter][0] != 3) return -1;
    iter++;
    while (lexems[iter][0] == 1 and lexems[iter][1] == 13) {
        iter++;
        if (lexems[iter][0] != 3) return -1;
        iter++;
    }
    if (!(lexems[iter][0] == 1 and lexems[iter][1] == 18)) return -1;
    else return iter;
    return iter;
}

int Syntactical_analyzer::output(int iter){
    if (!(lexems[iter][0] == 0 and lexems[iter][1] == 13)) return -1;
    iter++;
    if (!(lexems[iter][0] == 1 and lexems[iter][1] == 17)) return -1;
    iter++;
    int i = expression(iter);
    if (i == -1) return -1;
    iter = i + 1;
    while (lexems[iter][0] == 1 and lexems[iter][1] == 13) {
        iter++;
        i = expression(iter);
        if (i == -1) return -1;
        iter = i + 1;
    }
    if (!(lexems[iter][0] == 1 and lexems[iter][1] == 18)) return -1;
    else return iter;
}

int Syntactical_analyzer::opertr(int iter){
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

bool Syntactical_analyzer::program(){
    int flag = 0;
    for (unsigned long i = 0; i < lexems.size(); i++){
        if (lexems[i][0] == 1 and lexems[i][1] == 10){
            for (unsigned long j = i; j < lexems.size(); j++){
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
