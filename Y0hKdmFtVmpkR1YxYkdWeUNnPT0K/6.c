#include <stdio.h>

int sum_of_square(int range) {
  int sum = 0;
  for (int num = 1; num <= range; num++) {
    sum += num * num;
  }
  return sum;
}

int square_of_sum(int range) {
  int square = 0;
  for (int num = 1; num <= range; num++) {
    square += num;
  }
  return square * square;
}

int main() {
  printf("%i\n", square_of_sum(100) - sum_of_square(100));
  return 0;
}
