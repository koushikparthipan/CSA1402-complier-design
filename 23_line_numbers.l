%{
#include <stdio.h>
int line = 1;
%}
%%
\n      { printf("%4d: \n", line++); }
[^\n]+  { printf("%4d: %s\n", line, yytext); }
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
