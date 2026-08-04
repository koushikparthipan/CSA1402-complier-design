%{
#include<stdio.h>
%}

%%

[ \t\n]+                ;

"//".*                  ;

[0-9]+                  printf("Constant: %s\n", yytext);

[A-Za-z_][A-Za-z0-9_]*  printf("Identifier: %s\n", yytext);

"+"|"-"|"*"|"/"|"="     printf("Operator: %s\n", yytext);

.                       ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}