%{
int tokenCount = 0;
int numberOfVariables = 0;
int numberOfVariableTypes = 0;
int numberOfOperators = 0;
int numberOfDigits = 0;
%}

%%
[ ]+ 
[0-9]+ {printf("%s is a number or digit and it's a token\n", yytext); tokenCount++; numberOfDigits++;}
[\=\+\-\*\/]+ {printf("%s is a operator and it's a token\n", yytext); tokenCount++; numberOfOperators++;}
(int|float|double|string|char) {printf("%s is a type and it's a token\n", yytext); numberOfVariableTypes++; tokenCount++;}
(int|float|double|string|char)([ ^a-z]+|[ ^a-z0-1A-Z]) {printf("%s is a variable and type it's a token\n", yytext); numberOfVariables++; numberOfVariableTypes++; tokenCount++;}
. {} 

%%

int main(){
	FILE *file;
	file = fopen("code.c", "r");
	if (!file){
		printf("couldn't open file");
		exit(1);
	}
	else{
		yyin = file;
	}
	yylex();
	printf("number of tokens is : %d\n", tokenCount);
	printf("number of variables is : %d\n", numberOfVariables);
	printf("number of variable types is : %d\n", numberOfVariableTypes);
	printf("number of operators is : %d\n", numberOfOperators);
	printf("number of digits is : %d\n", numberOfDigits);
	}
	
