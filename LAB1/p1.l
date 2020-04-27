%{
int l=0;
int w=0;
%}
%%
\n ++l;
([a-zA-z])* ++w;
# return 0;

%%
int yywrap(){}
int main()
{
yylex();
printf("\n Lines          : %d",l);
printf("\n Words          : %d\n\n",w);
printf("\n -----------------------------------------");
printf("\n MADE BY : Hitendra Singh (171210028)");
printf("\n -----------------------------------------\n\n");

return 0;
}

