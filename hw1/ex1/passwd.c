#include <stdio.h>


int main () {
	
	char input[256];
	char names[] = "itamarofri";
	//fgets(input, sizeof(input), stdin);
	//fflush(stdin);
	gets(input);
	if (!strcmp(input,names)){
			printf("OK\n");
			return 0;
	}
	printf("Wrong ID\n");
	return 0;
	
}