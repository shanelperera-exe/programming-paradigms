%option noyywrap noinput nounput

%{
#include <stdlib.h>
#include "calc.tab.h"
%}

NUMBER [0-9]+
WS [ \t]+

%%
{NUMBER} { yylval.value = strtol(yytext, NULL, 10); return NUMBER; }
{WS}     { /* ignore whitespace */ }
\n       { return '\n'; }
[+\-*/()] { return yytext[0]; }
.        { /* ignore unknown characters */ }
%%
