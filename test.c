#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

size_t mystrlen(char *str);

char *mystrcpy(char *dst, char *src);

char *mystrdup(char *src);

int main(int argc, char **argv)
{
	printf("orgin %s\n", strdup(argv[1]));
	printf("===================================\n");
	printf("Mine  %s\n", mystrdup(argv[2]));
}
