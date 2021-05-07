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

%type <dval> statements
%type <dval> expressions

%%

statements: expressions { printf("= %lf\n",$1); }
	;
expressions: expressions '+' NUMBER { $$ = $1 + $3; }
	| expressions '-' NUMBER { $$ = $1 - $3; }
	| expressions '*' NUMBER { $$ = $1 * $3; }
	| expressions '/' NUMBER { $$ = $1 / $3; }
	|SQRT '(' expressions ')' {$$ = sqrt($3);}
	| NUMBER { $$ = $1; }
	;
%%

int main(){
	yyparse();
}
