%{
#include "y.tab.h"
#include <math.h>
extern double vbltable[26];
%}
%%
([0-9]+|([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) {
	yylval.dval = atof(yytext); return NUMBER;}
	
[ \t] ; /* ignore whitespace */
[a-z] { yylval.vblno = yytext[0] - 'a'; return NAME; }
"$" { return 0; /* endof input */ }
\n |. return yytext[0];
%%

