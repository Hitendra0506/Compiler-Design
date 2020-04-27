%{

int cl=0;
int sl=0;
int n=0;

%}
%%

[a-z] ++sl;
[A-Z] ++cl;
([1][0-9])|([2][0-1]) ++n;
# return 0;


%%
int yywrap(){}
int main()
{
yylex();
printf("\n\n Small Letters  : %d",sl);
printf("\n Capital Letters : %d",cl);
printf("\n Numbers(10-21) : %d",n);
printf("\n -----------------------------------------");
printf("\n MADE BY : Hitendra Singh (171210028)");
printf("\n -----------------------------------------\n\n");

return 0;
}

