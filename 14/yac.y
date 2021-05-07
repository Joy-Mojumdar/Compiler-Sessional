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
%type <dval> N
%type <dval> D


%% S: E {printf("Result=%f\n",$$);} ; 
                E: E '+' X {$$=$1 + $3;} 
                       |X {$$ = $1;} ;
                X: X '-' T {$$=$1 - $3;}
		         |T {$$ = $1;} ;
		T: T '*' D {$$=$1 * $3;}
                        |D {$$ = $1;} ;
		D: D '/' N {$$=$1 / $3;}
                        |N {$$ = $1;} ;
                N:SQRT '('NUMBER')' {$$=sqrt($3);} ;
                |NUMBER {$$ = $1;} ;
%%

int main(){
	yyparse();
}
