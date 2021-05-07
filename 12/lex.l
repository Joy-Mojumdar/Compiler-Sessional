%{
#include "y.tab.h"
extern int yylval;
%}
%%
"for" {return FOR;}
"print" {return PRINT;}
[0-9]+ {yylval = atoi(yytext); return NUMBER;}
[a-z] {yylval = atoi(yytext-'a');return TOKEN;}
[ \t]+ {} /* ignore whitespace */
'\n' {return 0;} /* logical EOF */
. {return yytext[0];}
%%

