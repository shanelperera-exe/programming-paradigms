%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>  /* Required for strdup() */
int yylex();  /* Declare lexer function */
void yyerror(const char *s);
%}

%union {
    char* str;
    int num;
}

%token LIGHT GATE TEMP ON OFF SET EXIT
%token <num> NUMBER
%type <str> device action

%%

command : instruction 
				| command instruction
				;
				
instruction: device action   { printf("Command: %s %s\n", $1, $2); }
       | TEMP SET NUMBER     { printf("Command: Temperature set to: %d\n", $3); }
       | EXIT                { printf("Exiting program...\n"); exit(0); }
       ;

device: LIGHT  { $$ = strdup("Light"); }
      | GATE   { $$ = strdup("Gate"); }
      ;

action: ON   { $$ = strdup("On"); }
       | OFF  { $$ = strdup("Off"); }
       ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Input: ");
    yyparse();
    return 0;
}