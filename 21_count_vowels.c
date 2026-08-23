#include <stdio.h>
#include <ctype.h>

int main() {
    char s[500];
    int count = 0, i;

    printf("Enter a sentence: ");
    fgets(s, sizeof(s), stdin);

    for (i = 0; s[i] != '\0'; i++) {
        char c = tolower((unsigned char)s[i]);
        if (c=='a' || c=='e' || c=='i' || c=='o' || c=='u')
            count++;
    }
    printf("Number of vowels: %d\n", count);
    return 0;
}
