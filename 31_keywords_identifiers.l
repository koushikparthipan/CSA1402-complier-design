%{
#include <stdio.h>
%}
%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while"
    { printf("KEYWORD: %s\n", yytext); }
[A-Za-z_][A-Za-z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]+               ;
.                      ;
%%
int main() { yylex(); return 0; }
int yywrap(void) { return 1; }
