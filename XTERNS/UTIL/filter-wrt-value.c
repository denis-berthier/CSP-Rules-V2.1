#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXLINE 1024  // enough for 1022-char lines + 1 or 2 for \r and/or \n

// mode = 'e' -> equality, mode = 'g' -> >= k
void filter_lines(FILE *f1, FILE *f2, int k, char mode) {
    char line1[MAXLINE], line2[MAXLINE];

    while (fgets(line1, MAXLINE, f1) && fgets(line2, MAXLINE, f2)) {
        line2[strcspn(line2, "\r\n")] = 0;  // remove newline
        int val = atoi(line2);

        if ((mode == 'e' && val == k) || (mode == 'g' && val >= k)) {
            fputs(line1, stdout);
        }
    }
}

int main(int argc, char *argv[]) {
    if (argc != 5) {
        fprintf(stderr, "Usage: %s input1 input2 k mode(e=eq,g=>=)\n", argv[0]);
        return 1;
    }

    FILE *f1 = fopen(argv[1], "r");
    FILE *f2 = fopen(argv[2], "r");
    if (!f1 || !f2) {
        perror("Error opening files");
        return 1;
    }

    int k = atoi(argv[3]);
    char mode = argv[4][0];

    if (mode != 'e' && mode != 'g') {
        fprintf(stderr, "Invalid mode: use 'e' for equality or 'g' for >=\n");
        return 1;
    }

    filter_lines(f1, f2, k, mode);

    fclose(f1);
    fclose(f2);
    return 0;
}
