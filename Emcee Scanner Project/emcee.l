%option noyywrap

%{
#include "tokens.h"	
%}

%%
def                         return (DEF);
if                          return (IF);
int                         return (INTEGER);
real                        return (REAL);
then                        return (THEN);
while                       return (WHILE);

[A-Za-z]+                   return (ID);
[[:digit:]]+\.[[:digit:]]+  return (REAL_CONST);
[[:digit:]]+                return (INT_CONST);
\"([^\\\"]|\\.)*\"          return (STRING_CONST);

":="                        return (ASSIGN);
";"                         return (SEMI);
":"                         return (COLON);

"("                         return (LEFT_PAREN);
")"                         return (RIGHT_PAREN);
"["                         return (LEFT_SQUARE);
"]"                         return (RIGHT_SQUARE);
"{"                         return (LEFT_BRACE);
"}"                         return (RIGHT_BRACE);
","                         return (COMMA);

"+"                         return(PLUS);
"-"                         return (MINUS);
"/"                         return (DIVIDE);
"^"                         return (CARAT);
">"                         return (GREATER_THAN);
">="                        return (GREATER_EQUAL);


[ \t\r\n]*                  ; // whitespace
#.*                         ; // comments


%%
void yyerror () 	/* Leave this section untouched */
{
	printf (" error\n");
	exit(0);
}
