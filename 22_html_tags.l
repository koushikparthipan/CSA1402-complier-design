%{
#include <stdio.h>
%}
%%
"<"[^>\n]+">"     { printf("HTML Tag: %s\n", yytext); }
.|\n              ;
%%
int main(int argc, char **argv) {
    if (argc < 2) { printf("Usage: %s <file.html>\n", argv[0]); return 1; }
    yyin = fopen(argv[1], "r");
    if (!yyin) { perror("File"); return 1; }
    yylex();
    fclose(yyin);
    return 0;
}
int yywrap(void) { return 1; }
