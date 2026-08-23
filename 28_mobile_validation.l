%{
#include <stdio.h>
%}
%%
^[6-9][0-9]{9}$   { printf("Valid mobile number\n"); }
^[0-9]+$          { printf("Invalid mobile number\n"); }
^[^\n]+           { printf("Invalid mobile number\n"); }
%%
int main() {
    printf("Enter mobile number: ");
    yylex();
    return 0;
}
int yywrap(void) { return 1; }
