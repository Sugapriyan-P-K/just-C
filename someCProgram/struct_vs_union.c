#include<stdio.h>
union unionjob
{
	char name[50];
	int workerid;
	float salary;
}ujob;
struct structjob
{
	char name[50];
	int workerid;
	float salary;
}sjob;
union u
{
	char t[50];
	int g;
}uu;
int main()
{
	float a;
	int b;
	char n[50];
	printf("Size of union job = %d bytes\n", sizeof(ujob));
	printf("%d %d %d %d\n", sizeof(a), sizeof(b), sizeof(n), sizeof(uu));
	printf("Size of structure job = %d bytes\n", sizeof(sjob));
	return 0;
}
