 clc
% syms x1 x2 x3
% solve(3*x1+2*x2+x3==3,x1)
% solve(7*x1+9*x2-2*x3==-4,x2)
% solve(x1+x2-2*x3==-2,x3)

% %definejam funkcijas
% f1=@(x2,x3) 1 - x3./3 - (2.*x2)./3;
% f2=@(x1,x3) (2.*x3)./9 - (7.*x1)./9 - 4./9;
% f3=@(x1,x2) x1./2 + x2./2 + 1;
% 
% x1=1;
% x2=4./9;
% x3=1;
% eps=0.001;

syms x1 x2 x3
solve(7*x1+5*x2+0*x3==4,x1)
solve(3*x1+4*x2+0*x3==-1,x2)
solve(0*x1-x2-6*x3==-5,x3)

f1=@(x2,x3) 4./7 - (5.*x2)./7;
f2=@(x1,x3) - (3.*x1)./4 - 1./4;
f3=@(x1,x2) 5./6 - x2./6;

x1=4./7;
x2=-1./4;
x3=5./6;
eps=0.001;

Jacobi(f1,f2,f3,x1,x2,x3,eps)
GaussSeidel(f1,f2,f3,x1,x2,x3,eps)