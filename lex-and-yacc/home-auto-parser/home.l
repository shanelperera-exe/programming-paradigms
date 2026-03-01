%{
#include "y.tab.h"
%}

NUM [0-9]+

%%
light          { return LIGHT; }
gate           { return GATE; }
temperature    { return TEMP; }
on             { return ON; }
off            { return OFF; }
set            { return SET; }
exit           { return EXIT; }
{NUM}          { yylval.num = atoi(yytext); return NUMBER; }
[ \t\n]        ; /* Ignore whitespace */
.              { printf("Invalid token: %s\n", yytext); }
%%