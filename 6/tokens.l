%{
int tokencount = 0;
%}
%%
[+|-]12\.(0[2-9]|[1-9][0-9])|(1[3-9]\.[0-9][0-9])|[2-9][0-9]\.[0-9][0-9]|[1-9][0-9][0-9]\.[0-9][0-9]\[1-5][0-6][0-9][0-9]\.([0-8][0-9]|9[0-3]) {printf("%s is a float value\n",yytext);}
^[0-9]+[a-zA-z]+[0-9]$ {printf("%s its a alphanumeric string\n",yytext);}
([A-za-z0-9]+\@[a-z]+\.\com) {printf("%s its a mail\n",yytext);}
\CSE(0[6][1-9]|070)[0][0-9][0-9][0-9][0-9] {printf("%s its a valid id\n",yytext);}
\#(include[ ])\<[a-z]+\.[h]\> {printf("%s is a valid c include\n",yytext);}
[_a-zA-Z][_a-zA-Z0-9]{1,31} {printf("%s is a valid c identifiers\n",yytext);}
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

}
