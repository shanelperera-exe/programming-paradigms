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

%token ENGINE DOORS LIGHTS SPEED START STOP LOCK UNLOCK ON OFF SET EXIT
%token <num> NUMBER
%type <str> component_engine component_doors component_lights action_engine action_doors action_lights

%%
command : instruction 
				| command instruction
				;

instruction:
       component_engine action_engine   { printf("Command: %s %s\n", $1, $2); }
     | component_doors action_doors     { printf("Command: %s %s\n", $1, $2); }
     | component_lights action_lights   { printf("Command: %s %s\n", $1, $2); }
     | SPEED SET NUMBER                 { printf("Command: Speed set to: %d\n", $3); }
     | EXIT                             { printf("Exiting program...\n"); exit(0); }
     ;

component_engine: ENGINE  { $$ = strdup("Engine"); };

component_doors: DOORS   { $$ = strdup("Doors"); };

component_lights: LIGHTS  { $$ = strdup("Lights"); };

action_engine: START   { $$ = strdup("Start"); }
          | STOP    { $$ = strdup("Stop"); }
          ;

action_doors: LOCK    { $$ = strdup("Lock"); }
         | UNLOCK  { $$ = strdup("Unlock"); }
         ;

action_lights: ON  { $$ = strdup("On"); }
          | OFF { $$ = strdup("Off"); }
          ;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}