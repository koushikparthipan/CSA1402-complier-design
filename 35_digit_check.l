%{
#include <stdio.h>
%}
%%
^[0-9]$   { printf("Input is a digit\n"); }
^[^\n]+   { printf("Input is not a digit\n"); }
%%
int main() {
    printf("Enter a character: ");
    yylex();
    return 0;
}
int yywrap(void) { return 1; }
