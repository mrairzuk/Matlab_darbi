%interpolacijas polinoma Pn(x) iegusana
clc
syms X
x = [-1; 0; 1; 2];
y = [2; 0; 3; -1];
plot(x,y,'r*')

L = y(1)*(X-x(2))*(X-x(3))*(X-x(4))/((x(1)-x(2))*(x(1)-x(3))*(x(1)-x(4)))+...
    y(2)*(X-x(1))*(X-x(3))*(X-x(4))/((x(2)-x(1))*(x(2)-x(3))*(x(2)-x(4)))+...
    y(3)*(X-x(1))*(X-x(2))*(X-x(4))/((x(3)-x(1))*(x(3)-x(2))*(x(3)-x(4)))+...
    y(4)*(X-x(1))*(X-x(2))*(X-x(4))/((x(4)-x(1))*(x(4)-x(2))*(x(4)-x(3)))
    
simplify(L)

%Lp = @(xx) 2.*xx.^2 - 12.*xx

Lp = @(xx) -0+2.5.*xx+2.5.*xx.^2-2.*xx.^3

hold on
xx=-1:0.1:2;
plot(xx,Lp(xx),'g')