#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>
#include <stdbool.h>

void *callback_function(void * arg) {

   char *str = (char *) arg;

   while(true) {
      printf("Input string: %s\n", str);
      sleep(1);
   }

   pthread_exit(0);
}

int main(void) {

   pthread_t thread1;

   char *str = (char *) calloc(sizeof (char), 64);
   strcpy(str,  (const char *) "Eu sou uma nova thread\n");

   int error_code = pthread_create(&thread1, NULL, callback_function, str);

   if(error_code != 0) {
      printf("Error occurred in mult-threading, ERROR_CODE: %d\n", error_code);
      return 0;
   }

   printf("Main function paused\n\n");
   sleep(5);
   printf("Main function unpaused\n\n");

   pthread_cancel(thread1);
   pthread_join(thread1, NULL);
   free(str);

   return 0;
}