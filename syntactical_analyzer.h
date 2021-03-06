#ifndef SYNTACTICAL_ANALYZER_H
#define SYNTACTICAL_ANALYZER_H
#include <string>
#include <vector>

using namespace std;

class Syntactical_analyzer
{
private:
    vector<vector<unsigned long>> lexems;
    vector<string> numbers;

    bool type(int iter);
    bool identifier(int iter);
    bool relationship_group(int iter);
    bool addition_group(int iter);
    bool multiplication_group(int iter);
    bool unary_operation(int iter);
    bool boolean_constant(int iter);
    bool binary(int iter);
    bool octal(int iter);
    bool decimal(int iter);
    bool hexadecimal(int iter);
    bool integer(int iter);
    int number(int iter);
    int order(int iter);
    int dot(int iter);
    int real(int iter);
    int factor(int iter);
    int term(int iter);
    int operand(int iter);
    int expression(int iter);
    int description(int iter);
    int compound(int iter);
    int assignments(int iter);
    int conditional_oprt(int iter);
    int fixed_cycle(int iter);
    int conditional_loop(int iter);
    int input(int iter);
    int output(int iter);
    int opertr(int iter);
public:
    Syntactical_analyzer(vector<vector<unsigned long>> lxms,
                         vector<string> nums);
    bool program();
};

#endif // SYNTACTICAL_ANALYZER_H
