clc
a=0;
b=1;
eps=0.001;
x=linspace(a,b,100);
f=@(x) 2.5.*x-2.^x;
bisection(f,a,b,eps)