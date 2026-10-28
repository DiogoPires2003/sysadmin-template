#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define MB (1024 * 1024)

int main(int argc, char **argv) {
   while (1){

        void *p = malloc(MB);

        memset(p, 0, MB);
   }
    return 0;
}

     