%{
#include <stdio.h>
%}
%%
[+-][0-9]+(\.[0-9]+)?   {
    if (yytext[0] == '-') printf("Negative: %s\n", yytext);
    else printf("Positive: %s\n", yytext);
}
[0-9]+(\.[0-9]+)?       { printf("Positive: %s\n", yytext); }
[ \t\n]+                ;
.                       ;
%%
int main() { yylex(); return 0; }
int yywrap(void) { return 1; }
