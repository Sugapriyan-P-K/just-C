#include<stdio.h>
#include<math.h>
int main()
{
    char name[100];
	float ant, unit, amt, surcharge;
	int idno;
	printf("Enter the ID.NO of customer:");
	scanf("%d", &idno);
	printf("Enter the Name of customer:");
	scanf("%s", &name);
	printf("Enter the Unit of current consumed by the customer:");
	scanf("%f", &unit);
	if(unit<=199){
		amt=unit*1.20;
	}
    else if (unit<=399){
    	amt=unit*1.50;
	}
	else if(unit<=599){
		amt=unit*1.80;
	}
	else if (unit>=600){
		amt=unit*2.00;
	}
	else{
	    printf("Incorrect registrartion! check again");
	}
	printf("Your ID.no : %d \n", idno);
	printf("Customer name: %s\n", name);
	printf("Units of current consmed by consumer : %.2f\n", unit);
	if (amt<=100){
        amt=ant;
        ant=100;
        printf("Your current bill amount is = %.2f", ant);
    }
	else if (amt<401){	
    	printf("Your current bill amount is = %.2f", amt);
   }
    else{
		surcharge=amt+amt*0.15;
		printf("Your current bill amount with surcharge is = %.2f", surcharge);	
    }
	return 0;
}
