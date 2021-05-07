%{
#include "y.tab.h"
%}

%%
[0-9]+ { yylval.dval = atof(yytext); return NUMBER;}
[0-9]+\.[0-9]+ { yylval.dval = atof(yytext); return NUMBER;}
[ \t]+ {} /* ignore whitespace */
\n {return 0;} /* logical EOF */
(sqrt) {return SQRT;}
. {return yytext[0];}
%%
