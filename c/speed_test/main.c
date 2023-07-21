#include <stdio.h>
#include <stdlib.h>

typedef long long int ll;

ll factorial(ll n) {
   if(n == 0 || n == 1)
      return 1;

   return n * factorial(n-1);
}

int main(int argc, char **argv) {
   ll i;

   ll n = atoi(argv[1]);
   printf("n = %lld\n", n);

   for(i = 0; i < n; i++);
   printf("i = %lld\n", i);

   printf("20! = %lld\n", factorial(30));

   return 0;
}