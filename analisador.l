%{
#include <stdio.h>
%}

%option noyywrap

%%

"PRINT"     {printf("COMMAND PRINT STRING", yytext);} 
"ADD"       {printf("COMMAND ADD NUMBER", yytext);}
"SUB"       {printf("COMMAND SUB NUMBER", yytext);}
STRING[a-zA-Z.]  {printf("STRING: %s\n", yytext);}
NUMBER[0-9]+      {printf("NUMBER: %s\n", yytext);}
WHITESPACE[ \t\n]+

%%

int main() {
    yylex();
    return 0;
}