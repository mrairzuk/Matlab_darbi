clc
syms X
%Langrazas polinoma iegusana
x=[-1;1;3;5];
y=[-3;0;2;-4];
plot(x,y,'ko')

L=y(1)*(X-x(2))*(X-x(3))*(X-x(4))/((x(1)-x(2))*(x(1)-x(3))*(x(1)-x(4)))+...
  y(2)*(X-x(1))*(X-x(3))*(X-x(4))/((x(2)-x(1))*(x(2)-x(3))*(x(2)-x(4)))+...
  y(3)*(X-x(1))*(X-x(2))*(X-x(4))/((x(3)-x(1))*(x(3)-x(2))*(x(3)-x(4)))+...
  y(4)*(X-x(1))*(X-x(2))*(X-x(3))/((x(4)-x(1))*(x(4)-x(2))*(x(4)-x(3)))

simplify(L)
%atbildi iekopesim Lp ar handle rezimu

%  Lp=@(xx) - (7.*xx.^3)./48 + (5.*xx.^2)./16 + (79.*xx)./48 - 29./16
% 
% hold on 
% xx=-1:0.1:5;
% plot(xx,Lp(xx),'r')