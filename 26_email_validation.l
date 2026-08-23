%{
#include <stdio.h>
%}
%%
^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$   { printf("Valid Email\n"); }
^[^\n]+                                               { printf("Invalid Email\n"); }
%%
int main() {
    printf("Enter email: ");
    yylex();
    return 0;
}
int yywrap(void) { return 1; }
