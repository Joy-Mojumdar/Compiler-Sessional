%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
yylex();
%}

%union{
	double dval;
	int vblno;
}

%token <dval> NUMBER


%token SQRT

%type <dval> S
%type <dval> E
%type <dval> X
%type <dval> T

%% S: E {printf("Result=%f\n",$$);} ; 
                  E: E '+' X {$$=$1 + $3;} 
                       |X {$$ = $1;} ;
                  X: X '-' T {$$=$1 - $3;}
                        |T {$$ = $1;} ;
                  T: NUMBER {$$ = $1;} ;
%%

int main(){
	yyparse();
}
