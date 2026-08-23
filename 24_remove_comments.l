%{
#include <stdio.h>
long comments = 0;
%}
%%
"//".*                         { comments++; }
"/*"([^*]|\*+[^*/])*\*+"/"     { comments++; }
\n                              { putchar('\n'); }
.                               { ECHO; }
%%
int main(int argc, char **argv) {
    FILE *out;
    if (argc < 3) {
        printf("Usage: %s <input.c> <output.c>\n", argv[0]);
        return 1;
    }
    yyin = fopen(argv[1], "r");
    out = fopen(argv[2], "w");
    if (!yyin || !out) { perror("File"); return 1; }

    yyout = out;
    yylex();
    fprintf(stderr, "Comment lines/comments removed: %ld\n", comments);

    fclose(yyin);
    fclose(out);
    return 0;
}
int yywrap(void) { return 1; }
