%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
void yyerror(const char *s){
	fprintf(stderr,"%s\n",s);
}
extern FILE *yyin;
int yylex();
int count_start;
int count_end;
int var=0;
%}
%token NUMBER TOKEN PRINT FOR
%%
for_statement : for_cond statement ';' { }
	      ;
for_cond : token '(' expression ')' { int count = 0;}
	 ;
expression: TOKEN '=' NUMBER ':' NUMBER {count_start=$3;count_end=$5; var=$1;  }
	;
statement: command TOKEN { if(var==$2){
		for(var=count_start;var<=count_end;var++){
			printf("%d ",var);		
		}
	} }
	 ;
command: PRINT { }
       ;
token: FOR { }
     ;
%%
int main(){
	FILE *file;
	file = fopen("code.c", "r") ;
	if (!file) {
		printf("couldnot open file");
		exit (1);	
	}
	else {
		yyin = file;
	}
	yyparse();
}

