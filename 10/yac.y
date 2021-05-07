%{
#include<stdio.h>
#include<math.h>
yylex();
%}



%token NUMBER SQRT

%%

statements: expressions { printf("= %d\n",$1); }
	;
expressions: expressions '+' expressions { $$ = $1 + $3; }
	| expressions '-' expressions { $$ = $1 - $3; }
	| expressions '*' expressions { $$ = $1 * $3; }
	| expressions '/' expressions { $$ = $1 / $3; }
	|SQRT '(' expressions ')' {$$ = sqrt($3);} 
	| NUMBER { $$ = $1; }
	;
%%

int main(){
	yyparse();
}
