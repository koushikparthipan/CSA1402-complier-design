#include <stdio.h>
#include <string.h>

int main() {
    /* Grammar: L -> L,S | S
       After eliminating left recursion:
       L  -> S L'
       L' -> , S L' | epsilon
    */
    printf("Original Grammar:\n");
    printf("L -> L,S | S\n\n");
    printf("Grammar after eliminating left recursion:\n");
    printf("L  -> S L'\n");
    printf("L' -> , S L' | epsilon\n");
    return 0;
}
