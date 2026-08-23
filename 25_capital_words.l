%{
#include <stdio.h>
%}
%%
[A-Z][A-Z0-9_]*     { printf("Capital word: %s\n", yytext); }
[A-Za-z0-9_]+       ;
[ \t\n]+            ;
.                   ;
%%
int main() { yylex(); return 0; }
int yywrap(void) { return 1; }
