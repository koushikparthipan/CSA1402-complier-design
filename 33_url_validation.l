%{
#include <stdio.h>
%}
%%
^(https?://)?(www\.)?[A-Za-z0-9.-]+\.[A-Za-z]{2,}([/][^ \n]*)?$  { printf("Valid URL\n"); }
^[^\n]+                                                        { printf("Invalid URL\n"); }
%%
int main() {
    printf("Enter URL: ");
    yylex();
    return 0;
}
int yywrap(void) { return 1; }
