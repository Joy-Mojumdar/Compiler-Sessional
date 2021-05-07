%{
int tokencount = 0;
%}
%%
[ ]+ {printf("White spaces ignored\n");}
\\\\.*.[\n]? {printf("%s is a comment\n",yytext);}
[a-zA-Z]+ {printf("%s is a token\n",yytext);tokencount++;}
[<>\-\+\?\*\/!\^,\(\);] {printf("%s is a token\n",yytext);tokencount++;}
\/\*(.|\n)+\*\/ {printf("Comment block found");}
. {printf("Unexpected\n");}
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
printf("Number of tokens is : %d\n",tokencount);
}
