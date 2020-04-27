%{
int l=0;
int cl=0;
int sl=0;
int n=0;
int w=0;


%}
%%
\n ++l;
[a-z] ++sl;
[A-Z] ++cl;
([1][0-9])|([2][0-1]) ++n;
([a-zA-z])* ++w;
1001 return 0;

%%
int yywrap(){}
int main()
{
yylex();
printf("\n Lines          : %d",l);
printf("\n Small Letters  : %d",sl);
printf("\n Captal Letters : %d",cl);
printf("\n Numbers(10-21) : %d",n);
printf("\n Words          : %d\n\n",w);
printf("\n -----------------------------------------");
printf("\n MADE BY : Hitendra Singh (171210028)");
printf("\n -----------------------------------------");

return 0;
}

