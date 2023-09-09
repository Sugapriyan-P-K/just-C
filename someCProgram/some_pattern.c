#include<stdio.h>
int main()
{
	int i, j, x, y, p, q;
	printf("This is 4x4 * pattern\n");
	for (i=1;i<=4;i++)
	{
		for (j=1;j<=4;j++)
		{
			printf("*");
			
		}
		printf("\n");
	}
	printf("This is square box # pattern\n");
	for (x=1;x<=4;x++)
	{
		for (y=1;y<=4;y++)
		{
			if(x==1 || x==4 || y==1 || y==4)
			    printf("#");
			else
			    printf(" ");
		}
		printf("\n");
	}
	printf("This is right angle triangle @ pattern \n");
	for (p=1;p<=4;p++)
	{
		for (q=1;q<=p;q++)
		{
			
			    printf("@");
			   
		}
		printf("\n");
	}
	for (x=1;x<=y;x++)
	{
		for (y=1;y<=4;y++)
		{
			
			    printf("#");
			
		}
		printf("\n");
	}
	return 0;
}
