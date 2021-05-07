%{
#include<stdio.h>
#include<stdlib.h>
extern FILE *yyin;
double vbltable[26] ;
void yyerror(const char *c){
fprintf(stderr,"%s",c);
}
int yylex();
%}
%union{
double dval;
int vblno;
}
%token <vblno> NAME
%token <dval> NUMBER
%type <dval> expression term factor

%%
statement_list: statement_list statement ';' '\n'
                | statement ';' '\n';
statement: NAME '=' expression { vbltable[$1] = $3; printf("%c = %lf\n",$1+'a',$3);}  
             | expression { printf("= %g\n",$1); };
expression: expression '+' term { $$ = $1 + $3; }
            | expression '-' term { $$ = $1 - $3; }
             | term { };
term: term '*' factor { $$ = $1 * $3; } 
     | term '/' factor 
      {
	if($3==0.0){
	yyerror ("divide by zero");
	}
	else{
	$$ = $1 / $3;
	}
	}
      | factor { };
factor: '-' factor { $$ = -$2; } 
        | '(' expression ')' { $$ = $2; }
        | NUMBER {$$ = $1;}
        | NAME { $$ = vbltable[$1]; };
%%

int main(){
FILE *file;
file = fopen("code.c", "r") ;
	if (!file) {
	printf("Could not open file");
	exit (1);
	}
	else {
	yyin = file;
	}
yyparse();
}
