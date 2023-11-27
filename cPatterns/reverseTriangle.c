#include<stdio.h>

void drawPattern(int n) {
    for (int row = 1;  row <= n; row++) {
        int temp = ((n * 2) - (2 * row));
        for (int space = 0; space < temp; space++) {
            printf(" ");
        }
        int num = row;
        for (int col = 1; col <= row; col++) {
            printf("%d ", num);
            num--;
        }
        printf("\n");
    }
}
int main(void) {
    int n;
    printf("Enter the number : ");
    scanf("%d", &n);
    drawPattern(n);
}