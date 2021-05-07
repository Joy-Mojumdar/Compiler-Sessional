%{
int tokencount = 0;
%}

%%
[0-9]+ {printf("%s number of digits\n",yytext);tokencount++;}
[A-Z]+[a-z]*[0-9]* {printf("%s starts with capital\n",yytext);tokencount++;}
[0-9]*.[0-9]+ {printf("%s is a floating number \n",yytext);tokencount++;}
^[aeiou].*[aeiou]$ {printf("%s starts/ends with vowel\n",yytext);tokencount++;}
([+\-\*\/]+)|(^([a-z]*[0-9]*)[+\-\*\/]+([a-z]*[0-9]*)$) {printf("%s an operator \n",yytext);tokencount++;}
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
	yylex();
	printf("number of tokens is : %d\n", tokencount);
	
	}
	
