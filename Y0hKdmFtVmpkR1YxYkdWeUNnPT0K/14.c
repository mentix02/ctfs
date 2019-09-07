#include <stdio.h>

long long int return_length(long int num) {
  long long int counter = 1;
  while (num != 1) {
    if (num % 2 == 0) {
      num /= 2;
    } else {
      num = (num * 3) + 1;
    }
    counter++;
  }
  return counter;
}

int main() {

  long long int longest = 1, num = 0;

  long long int count_once = 0;

  for(long int i=1; i<=1000000;i++) {

    count_once = return_length(i);
    //printf("%i\n", count_once);

    // printf("%li : %lld \n", i, count_once);

    if (longest <= count_once) {
      longest = count_once;
      num = i;
    }

  }
  printf("%lld\n", num);
  return 0;
}
