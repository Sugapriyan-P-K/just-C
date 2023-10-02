#include <stdio.h>

void topLeftTriangle(int n) {
    for (int i = 1; i <= n; i++){
        for (int j = 0; j < n + (n - (2 * i)); j++) {
            printf(" ");
        }
        for (int k = 0; k < i; k++) {
            printf("* ");
        }
        printf("\n");
    }
}

int main(void) {
    int t;
    scanf("%d", &t);
    for (int i = 0; i < t; i++) {
        int n;
        scanf("%d", &n);
        topLeftTriangle(n);
    }
}