#include <stdio.h>
int main() {

  int i, n;
  int term1 = 0, term2 = 1, nextTerm;
  // get no. of terms from user
  printf("Enter the number of terms: ");
  scanf("%d", &n);
  printf("Fibonacci Series: %d, %d, ", term1, term2);
  for (i = 3; i <= n; ++i) {
    nextTerm = term1 + term2;
    printf("%d, ", nextTerm);
    term1 = term2;
    term2 = nextTerm;
  }
  return 0;
}
