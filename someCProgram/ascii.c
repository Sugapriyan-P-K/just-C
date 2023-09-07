#include<stdio.h>
int main()
{
	//ASCII-American standard code for information interchange//
	//ascii range from 0 to 127 < important//
	int i;
	for (i=0;i<=127;i++)
	{
		printf("%d:%c \t", i, i);
	}
	/*ascii value base is 127 after that it will only print the numbers*/
	return 0;
}
