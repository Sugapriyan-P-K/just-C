#include<stdio.h>

void drawPattern(int n) {
    for (int i = 0; i <= n; i++) {
        for (int j = 0; j < n + (n - 2 * i); j++) {
            printf(" ");
        }
        int k = i;
        int temp = i + (i - 1);
        for (int l = 0; l < temp; l++) {
            k = (l > temp / 2) ? k - 1 : k + 1;
            printf("%d ", k - 1);
        }
        printf("\n");
    }
}

int main(void) {
    int n;
    printf("Enter the number : ");
    scanf("%d", &n);
    printf("\n");
    drawPattern(n);
}