clc

%definejam funkcijas

%Pirms so dariju, veicu sekojosus parveidojumus sistemai:
% Sistemas 2. un 3. rindu apmainiju ar vietam
% 3. rindu sareizinaju ar -1
% Pec tam 3. rindu pieskaitiju 2. rindai

%syms x1 x2 x3
%solve(50*x1+3*x2-x3==100,x1)
%solve(-2*x1-102*x2+5*x3==200,x2)
%solve(-3*x1-100*x2+105*x3==-300,x3)

f1=@(x2,x3) -((3.*x2)./50)+(x3./50)+2;
f2=@(x1,x3) -(x1./51)+((5.*x3)./102)-(100./51);
f3=@(x1,x2) (x1./35)+((20.*x2)./21)-(20./7);
x1=2;
x2=-(100./51);
x3=-(20./7);
eps=0.001

Jacobi(f1,f2,f3,x1,x2,x3,eps)

GaussSeidel(f1,f2,f3,x1,x2,x3,eps)


