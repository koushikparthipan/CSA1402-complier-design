%{
#include <stdio.h>
#include <string.h>
char longest[200] = "";
%}
%%
[A-Za-z]+ {
    if (strlen(yytext) > strlen(longest))
        strcpy(longest, yytext);
}
[ \t\n]+ ;
. ;
%%
int main() {
    printf("Enter sentence:\n");
    yylex();
    printf("Longest word: %s\n", longest);
    printf("Length: %lu\n", (unsigned long)strlen(longest));
    return 0;
}
int yywrap(void) { return 1; }
