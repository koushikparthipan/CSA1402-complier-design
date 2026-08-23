%{
#include <stdio.h>
long chars = 0, words = 0, lines = 0;
%}
%%
\n              { chars++; lines++; }
[ \t]+          { chars += yyleng; }
[^ \t\n]+       { chars += yyleng; words++; }
.               { chars++; }
%%
int main(int argc, char **argv) {
    if (argc < 2) {
        printf("Usage: %s <file.c>\n", argv[0]);
        return 1;
    }
    yyin = fopen(argv[1], "r");
    if (!yyin) { perror("File"); return 1; }
    yylex();
    fclose(yyin);
    printf("Characters: %ld\nWords: %ld\nLines: %ld\n", chars, words, lines);
    return 0;
}
int yywrap(void) { return 1; }
