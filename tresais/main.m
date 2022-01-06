clc

syms X Y
% sin(X)+2*Y==2,X
% cos(Y-1)+X==0.8,Y

G1(Y)=(2-sin(X))/2;
G2(X)=0.8-cos(Y-1);

G1X=diff(G1,X)
G1Y=diff(G1,Y)
G2X=diff(G2,X)
G2Y=diff(G2,Y)

solve(-cos(X)/2==1)
solve(-cos(X)/2==-1)
solve(sin(Y - 1)==1)
solve(sin(Y - 1)==-1)

f1=@(x) 2-sin(x)./2;
f2=@(y) 0.8-cos(y-1);

x=linspace(1.8,2,100);
y=linspace(0,0.4,100);
plot(x,f2(x))
hold on
plot(f1(y),y)

Jacobi_for_NLS(f1,f2,0.2,0.1,0.001)