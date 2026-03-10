%{
#include <stdio.h>

int yylex(void);
void yyerror(const char *s);
%}

%union {
    long value;
}

%token <value> NUMBER
%type <value> expression term factor

%%
input:
    /* empty */
    | input line
    ;

line:
    '\n'
    | expression '\n' { printf("%ld\n", $1); }
    ;

expression:
    expression '+' term { $$ = $1 + $3; }
    | expression '-' term { $$ = $1 - $3; }
    | term { $$ = $1; }
    ;

term:
    term '*' factor { $$ = $1 * $3; }
    | term '/' factor {
        if ($3 == 0) {
            yyerror("division by zero");
            $$ = 0;
        } else {
            $$ = $1 / $3;
        }
    }
    | factor { $$ = $1; }
    ;

factor:
    NUMBER { $$ = $1; }
    | '(' expression ')' { $$ = $2; }
    ;
%%

void yyerror(const char *s) {
    fprintf(stderr, "error: %s\n", s);
}

int main(void) {
    return yyparse();
}
