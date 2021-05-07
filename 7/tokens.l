%{
int tokencount = 0;
int test = 0;
int verbs = 0;
int total = 0;
%}
%%
[0-9a-zA-Z]{1,} {test++;}
(is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|have|had|go)[ ] {verbs++;}
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
total = test + verbs;
printf("total words are %d\n",total);
printf("total verbs are %d\n",verbs);


}
