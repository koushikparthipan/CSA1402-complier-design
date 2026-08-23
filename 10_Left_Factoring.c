#include <stdio.h>

int main() {
    /* Grammar: S -> iEtS | iEtSeS | a
       After left factoring:
       S  -> iEtS S' | a
       S' -> eS | epsilon
       E  -> b
    */
    printf("Original Grammar:\n");
    printf("S -> iEtS | iEtSeS | a\n");
    printf("E -> b\n\n");
    printf("Grammar after left factoring:\n");
    printf("S  -> iEtS S' | a\n");
    printf("S' -> eS | epsilon\n");
    printf("E  -> b\n");
    return 0;
}
