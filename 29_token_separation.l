%{
#include <stdio.h>
%}
%%
"#include"|"#define"                   { printf("PREPROCESSOR: %s\n", yytext); }
"int"|"float"|"char"|"double"|"void"|"if"|"else"|"for"|"while"|"return"
                                      { printf("KEYWORD: %s\n", yytext); }
[A-Za-z_][A-Za-z0-9_]*                { printf("IDENTIFIER: %s\n", yytext); }
[0-9]+(\.[0-9]+)?                     { printf("CONSTANT: %s\n", yytext); }
\"([^\"\\]|\\.)*\"                    { printf("STRING: %s\n", yytext); }
"=="|"!="|"<="|">="|"++"|"--"|"&&"|"||" { printf("OPERATOR: %s\n", yytext); }
[+\-*/%=<>]                           { printf("OPERATOR: %s\n", yytext); }
[(){}\[\],;]                           { printf("SPECIAL: %s\n", yytext); }
[ \t\n]+                              ;
.                                      { printf("UNKNOWN: %s\n", yytext); }
%%
int main(int argc, char **argv) {
    if (argc < 2) { printf("Usage: %s <file.c>\n", argv[0]); return 1; }
    yyin = fopen(argv[1], "r");
    if (!yyin) { perror("File"); return 1; }
    yylex();
    fclose(yyin);
    return 0;
}
int yywrap(void) { return 1; }
