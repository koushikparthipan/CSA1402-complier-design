%{
#include <stdio.h>
%}
%%
[0-9]+       { printf("NUMBER: %s\n", yytext); }
[+]          { printf("ADDITION\n"); }
[-]          { printf("SUBTRACTION\n"); }
[*]          { printf("MULTIPLICATION\n"); }
[/]          { printf("DIVISION\n"); }
[ \t\n]+     ;
.            { printf("OTHER: %s\n", yytext); }
%%
int main() {
    printf("Enter expression: ");
    yylex();
    return 0;
}
int yywrap(void) { return 1; }
