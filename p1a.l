%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}
%%
[a-zA-Z]+[0-9A-Za-z]* {id++; printf("\n identifier:");ECHO;}
[\+\*\=] {op++; printf("\n operator:");ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {;}
%%
int main()
{
printf(" enter te expression:\n");
yylex();
if((op+1) ==id && v==0 && flag==0)
{
printf("\n expression is valid\n");
printf(" the no. of identifiers are:%d\n",id);
printf(" the no.of operators are:%d\n",op);
}
else
printf("\n expression is invalid\n");
}
