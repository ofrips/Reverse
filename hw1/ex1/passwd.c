#include <stdio.h>
#include <string.h>


int main () {
	char input[11];
	input[10] = 0;
	char names[] = "itamarofri";
	fgets(input, 11, stdin);
	if (!strcmp(input,names)){
			printf("OK\n");
			return 0;
	}
	printf("Wrong ID\n");
	return 0;
}