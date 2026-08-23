%{
#include <stdio.h>
#include <string.h>
#include <strings.h>
char target[100];
int count = 0;
%}
%%
[A-Za-z]+ {
    if (strcasecmp(yytext, target) == 0) count++;
}
[ \t\n]+ ;
. ;
%%
int main() {
    printf("Enter word to search: ");
    scanf("%99s", target);
    getchar();
    printf("Enter sentence:\n");
    yylex();
    printf("Frequency of \"%s\": %d\n", target, count);
    return 0;
}
int yywrap(void) { return 1; }
