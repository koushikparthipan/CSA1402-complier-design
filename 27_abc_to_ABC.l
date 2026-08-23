%{
#include <stdio.h>
%}
%%
abc     { printf("ABC"); }
\n      { printf("\n"); }
.       { ECHO; }
%%
int main() { yylex(); return 0; }
int yywrap(void) { return 1; }
