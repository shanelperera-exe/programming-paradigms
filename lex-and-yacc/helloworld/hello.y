%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(const char *s);
%}

%token HELLO

%%
command: HELLO { printf("Hello, World!\n"); };
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Input: ");
    yyparse();
    return 0;
}