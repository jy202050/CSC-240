#include <stdio.h> 
#include "tokens.h"

int yylex ();	// scanner prototype
extern char* yytext;
	
int main ()
{ 	int n;

	printf("Emcee Compiler – ver. 0.1\n\n");
	
	while (n = yylex()) { // call scanner until it returns 0 for EOF
		switch (n) {
			case REAL_CONST:
			case ID:
			case INT_CONST:
			case STRING_CONST:	printf (" %d (%s)", n, yytext);	break;
			default:			printf (" %d", n); 				break;
		}	
	}
	printf("\n");
}
