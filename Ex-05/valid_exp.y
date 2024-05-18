%{
    #include<stdio.h>
%}
%token NUMBER
%token VARIABLE

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%

S: VARIABLE'='E {
       printf("\nEntered arithmetic expression is Valid\n\n");
       return 0;
     }
E:E'+'E 
 |E'-'E 
 |E'*'E 
 |E'/'E 
 |E'%'E 
 |'('E')' 
 | NUMBER 
 | VARIABLE
;

%%

void main()
{ 
   printf("247 - Shriram Kumar\n");
   printf("\nEnter Any Arithmetic Expression :\n");
   yyparse();
}
int yyerror()
{
   printf("\nEntered arithmetic expression is Invalid\n\n");
   return 0;

}
