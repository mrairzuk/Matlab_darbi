x=linspace(0,1,100);
f=@(x) 3.*x-cos(x);
df=@(x) sin(x)+3;
d2f=@(x) cos(x);
subplot(2,2,1);
plot(x,f(x))
grid
subplot(2,2,2);
plot(x,df(x))
grid
subplot(2,2,3);
plot(x,d2f(x))
grid
regulafalsi(f,d2f,0,1,0.001)

%clc
%syms x
%f=3*x-cos(x);
%df=diff(f)
%df2=diff(f,2)