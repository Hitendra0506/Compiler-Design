%{
int l=0;
int c=0;
%}
%%
\n ++l;
. ++c;
end return 0;
%%
int yywrap(){}
int main()
{
yylex();
printf(" %d , %d ",l,c);
return 0;
}

