%{
#include <stdio.h>
#include <string.h>
char oldword[100], newword[100];
%}
%%
[A-Za-z]+ {
    if (strcmp(yytext, oldword) == 0)
        printf("%s", newword);
    else
        printf("%s", yytext);
}
\n          { putchar('\n'); }
.           { ECHO; }
%%
int main(int argc, char **argv) {
    if (argc < 2) {
        printf("Usage: %s <input.txt>\n", argv[0]);
        return 1;
    }
    printf("Enter word to replace: ");
    scanf("%99s", oldword);
    printf("Enter replacement word: ");
    scanf("%99s", newword);

    yyin = fopen(argv[1], "r");
    if (!yyin) { perror("File"); return 1; }
    yylex();
    fclose(yyin);
    return 0;
}
int yywrap(void) { return 1; }
