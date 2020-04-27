%{
#include<stdio.h>
#include<stdlib.h>
int opnd=0,r=0,d=0,m=0,a=0,s=0,op=0,cp=0,os=0,cs=0,ob=0,cb=0;
int oper=0;
char last;
void sign();
%}
%%

"/" {++d; ++oper;}
"%" {++r; ++oper;}
"*" {++m; ++oper;}
"+" {++a; ++oper;}
"-" {++s; ++oper;}
"[" {++os; last = '[';}
"(" {++op; last = '(';}
"{" {++ob; last = '{';}
"}" {++cb; if((cb > ob) || (last != '}') ){ printf("\n\n INVALID \n"); sign(); exit(0);} }
")" {++cp; if((cp > op) || (last != ')')){ printf("\n\n INVALID \n"); sign(); exit(0);} }
"]" {++cs; if((cs > os) || (last != ']')){ printf("\n\n INVALID \n"); sign(); exit(0);} }

([a-zA-Z])* ++opnd;

\n { if((opnd <= oper) || (os!=cs) || (ob!=cb) || (op!=cp)){ printf("\n\n INVALID \n");} else printf("\n\n VALID \n");  sign(); exit(0); }


%%
int yywrap(){}
void sign()
{
printf("\n -----------------------------------------");
printf("\n MADE BY : Hitendra Singh (171210028)");
printf("\n -----------------------------------------\n\n");
}
int main()
{
printf("\n\n Enter the expression  : ");
yylex();

return 0;
}

