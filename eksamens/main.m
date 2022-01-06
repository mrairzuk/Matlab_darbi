syms x1 x2 x3

% 2.5 2 0.5 ==-1.5
% 2  -3  -1 == 2
% 1  2   5  == 10

solve(2.5*x1+2*x2+0.5*x3==-1.5,x1)
solve(2*x1-3*x2-x3==2,x2)
solve(x1+2*x2+5*x3==10,x3)

f1=@(x2,x3) - (4.*x2)./5 - x3./5 - 3./5;
f2=@(x1,x3) (2.*x1)./3 - x3./3 - 2./3;
f3=@(x1,x2) 2 - (2.*x2)./5 - x1./5;


GaussSeidel(f1, f2, f3, -3/5, -2/3, 2, 0.0001)


a = 2.5784;
x=linspace(0,1,100);
f=@(x) x.^3+5.*x-a;
f0=@(x) x*0;
bisection(f,0,1,0.0001)
plot(x,f(x), x, f0(x))

% Atbilde uz 1. uzd: 
% sakne = 0.49188 atrasta ar 14 iteracijam
% ar precizitati 0.0001