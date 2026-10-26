#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define GB (1024 * 1024 * 1024)

int main(int argc, char **argv) {
   
    char *p = calloc(1, 9L * GB);
    memset(p, 0, 9L * GB);
    
    return 0;
}

