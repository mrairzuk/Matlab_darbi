% clc
% %2.1
% syms X
% %Langrazas polinoma iegusana
% x=[1;2;3];
% y=[1.88;2.18;2.72];
% plot(x,y,'ko')
% 
% 
% 
% L=y(1)*(X-x(2))*(X-x(3))/((x(1)-x(2))*(x(1)-x(3)))+...
%   y(2)*(X-x(1))*(X-x(3))/((x(2)-x(1))*(x(2)-x(3)))+...
%   y(3)*(X-x(1))*(X-x(2))/((x(3)-x(1))*(x(3)-x(2)));
%     
% 
%  simplify(L)
% %atbildi iekopesim Lp ar handle rezimu
% 
%  Lp=@(xx) (3.*xx.^2)./25 - (3.*xx)./50 + 91./50
% 
% hold on 
% xx=1:0.1:3;
% plot(xx,Lp(xx),'r')

% %2.2
clc
% syms x
x=linspace(1,2,100);
f=@(x) exp(x)-x-2.2688;
df=@(x) (-0.500.*x.^2)-2.269.*x +exp(x);
d2f=@(x) -0.0416667.*x.^4-0.378167.*x.^3+exp(x);

% plot(x,f(x))
subplot(2,2,1);
plot(x,f(x))
grid
subplot(2,2,2);
plot(x,df(x))
grid
subplot(2,2,3);
plot(x,d2f(x))
grid
regulafalsi(f,d2f,1,2,0.001)



%syms x
%f=3*x-cos(x);
%df=diff(f)
%df2=diff(f,2)