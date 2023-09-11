# include <stdio.h> //head File
# include <string.h> // Character serial file
# include <stdlib.h>
// this program uses more DS of C program so you can know more things in this program
typedef struct in
{
    char id[20];//member account
    char key[20];//member password
    int sum;//Member Points
    struct in *next;
}member;

struct im// Product Information The following is a private member
{
    int id;//Product Number
    char name[50];//product name
    int stoct;//Commodity stocks
}goods[1000];

member *registe(member *t);//registered;
void buy();

member *registe(member *t)//registered
{
    printf ("Now member registration \n \n");
    char id[20], key[20];
    member *p, *q, *r;
    p = t;
    while(p->next) p = p->next;  // Looking for the last node in the list
    while(1)
    {
        printf ("Please enter your registered account, password: \n");
        scanf ("%s %s", id, key);
        q = t;
        while(q)// Determine if the account has been registered
        {
            if (strcmp (q->id, id)==0)
                break;
            else q = q->next;
        }
        if (q == NULL)// account is not registered
        {
            r = (member *)malloc(sizeof(member));
            r->next = NULL;
            p->next = r;
            strcpy (r->id, id);
            strcpy (r->key, key);
            r->sum = 1000; // The score of the member is 1000;
            break;
        }
        else
            printf ("The account has been registered, please re-enter the account, password \n");
    }
    printf ("Congratulations, already registered success, now you can log in \n \n");

    return t;
}

int login (member *t)//Sign in
{
    printf ("Now login");
    member *p;
    char id[20],key[20];
    int a, boo = 0;
    while (1)
    {
        printf ("Please enter your account, password: \n");
        scanf ("%s", id);
        if (strcmp(id, "#")==0)
            break;
        scanf ("%s", key);
        p = t;
        while (p)
        {
            if (strcmp(p->id, id)==0 &&strcmp(p->key, key)==0)
                break;
            else
                p = p->next;
        }
        if (p == NULL)
        {
            printf ("Sorry, this account and password are wrong, please log in \n");
            printf ("Launch login, press # \n");
        }
        else if
            (strcmp(id, "0")!=0)
        {
            boo = 1;
            break;
        }
    }
    return boo;
}
void buy()
{
    char s[20];
    int n;
    int i;
    while(1)
    {
        printf ("Please enter the number or name of the product: \n");
        scanf ("%s", s);
        if (strcmp(s, "0")==0)
            break;
        if (s[0]>='1' && s[0]<='9')
        {
            n = atoi(s);
            for (i=0; i<1000; i++)
            {
                if (goods[i].id == n)
                    break;
            }
            if (i > 1000)
            {
                printf ("There is no existence, please re-enter, please press 0 \n");
            }
            else
            {
                printf ("You have purchased success. \n");
            }
        }
        else
        {
            for (i=0; i<1000; i++)
            {
                if (strcmp(goods[i].name, s)==0) // The message of the compiler is not seen, and if you look, you should find that the function parameter type does not match.
                    break;
            }
            if (i > 1000)
            {
                printf ("The goods do not exist, please re-enter, launch the request 0 \n");
            }
            else
            {
                printf ("You purchase success. \n");
            }
        }

    }
}

int main(void)
{
    member *head = (member *)malloc(sizeof(member));
    strcpy(head->id, "0"), strcpy(head->key, "0");// Supermarket administrator
    head->next = NULL;
    int i, a, n, boo=0;

    while(1)
    {
        printf("Registered members, please press 1: \n");
        printf("Members directly enter, press 2: \n");
        printf("Please press 0: \n");
        scanf("%d", &a);
        if (a == 0)
            break;
        if (a == 1)
            head = registe(head);
        else if (a == 2)
            boo = login(head);
        if (boo)
            break;
    }
    if (a && boo==1)
    {
        printf ("Dear member, you log in success! \n");
        buy();
    }
    printf ("Safe to launch \n");
    return 0;
}
