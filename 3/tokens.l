%{
 int tokenCount = 0;
 int lines = 0;
 int even = 0;
 int binary = 0;
 int vowel = 0;
 int dotfloat = 0;
%}

%%
[\.] {printf("%s is a token with number of lines",yytext);tokenCount++,lines++;}
[0-9]*[0|2|4|6|8]$ {printf("%s is a token with even numbers\n",yytext);tokenCount++;even++;}
[0-1]+ {printf("%s is a token with binary numbers\n",yytext);tokenCount++;binary++;} 
^[aeiou]+[A-Za-z0-9]*[aeiou]+ {printf("%s is a token with vowels\n",yytext);tokenCount++;vowel++;}
[\+|\-](1[2-9][0-9]|[1-9][0-9][0-9]|[1-4][0-9][0-9][0-9]|5[0-6][0-9][0-9])\.(0[2-9]|[0-9][0-9|[0-9][1-3]) {printf("%s is a token with float\n",yytext);tokenCount++;dotfloat++;}
\#(include[ ])\<[a-z]+\.[h]\> {printf("%s is a valid c include\n",yytext);}
[_a-zA-Z][_a-zA-Z0-9]{1,31} {printf("%s is a valid c identifiers\n",yytext);}
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
	
	}
	
