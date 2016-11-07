#include <stdio.h>
#include <string.h>

#ifdef __GNUC__
#define TWONOPS __asm__("nop\n\tnop");
#else
#define SINGLENOP __asm { \
		nop \
	}
#define TWONOPS {SINGLENOP SINGLENOP}
#endif



int q1()
{
	char str[200]={0};

	TWONOPS
	strcpy(str, "A st");
	TWONOPS

	printf("%s\n", str); // Protects against removal of strcpy by the optimizer, but not part of your exercise
}

int q2()
{
	char str[200]={0};
	int rc;

	gets(str); // Seeting str in an opimizer-safe way, but not part of your exercise

	TWONOPS
	rc=strcmp(str, "A string hjdhkjdhkdjhdkjhdkjhd dkjhdkhdkjdhkdjhdkjhdkj");
	TWONOPS

	printf("%d\n", rc); // Protects against removal of strcmp by the optimizer, but not part of your exercise
}



int q3()
{
	char str[200]={0};
	char src[200]={0};

	gets(src); // Seeting str in an opimizer-safe way, but not part of your exercise

	TWONOPS
	memcpy(str, src, 200);
	TWONOPS

	printf("%s\n", str); // Protects against removal of strcpy by the optimizer, but not part of your exercise
}



int q4()
{
    int i; 
	int rc=0;

	TWONOPS
	for(i=0; i<100; i++)
		rc += i;
	TWONOPS

	printf("%d\n", rc); // Protects against removal of strlen by the optimizer, but not part of your exercise
}


int q5()
{
    int i; 
	int rc=0;

	i=getchar();

	TWONOPS
	switch (i)
	{
	case 'A':
		rc=1;
		break;
	case 'B':
		rc=9;
		break;
	case 'C':
		rc=8;
		break;
	case 'E':
		rc=7;
		break;
	case 'G':
		rc=6;
		break;
	case 'D':
		rc=5;
		break;
	case 'a':
		rc=4;
		break;
	case 'k':
		rc=11;
		break;
	case '0':
		rc=9;
		break;
	case '2':
		rc=9;
		break;
	case 'u':
		rc=9;
		break;
	case 'Z':
		rc=2;
		break;
	default:
		rc=30;
		break;
	}
	TWONOPS

	printf("%d\n", rc); // Protects against removal of strlen by the optimizer, but not part of your exercise
}

int main() {
		q1();
		q2();
		q3();
		q4();
		q5();
}
