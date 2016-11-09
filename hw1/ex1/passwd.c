#include <stdio.h>
#include <string.h>


int main () {
	
	char input[12];
	char names[] = "itamarofri";
	fgets(input,12,stdin);
	char* nl = strchr(input, '\n');
	if (nl) *nl =0;
	if (strlen(input)>10){
		printf("Wrong ID\n");
		return 0;
	}
	if (!strcmp(input,names)){
			printf("OK\n");
			return 0;
	}
	printf("Wrong ID\n");
	return 0;
	
}