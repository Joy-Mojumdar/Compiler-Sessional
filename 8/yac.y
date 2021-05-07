%{

yylex();
%}



%token NUMBER

%%

statements: expressions { printf("= %d\n",$1); }
	;
expressions: expressions '+' NUMBER { $$ = $1 + $3; }
	| expressions '-' NUMBER { $$ = $1 - $3; }
	| NUMBER { $$ = $1; }
	;
%%

int main(){
	yyparse();
}
