clc
syms X

int((atan(X)^3),40,42)

fun = @(x) (atan(x).^3);
int0=integral(fun,40,42)

atv1=diff((atan(X)^3))
atv2=diff((atan(X)^3),2)

fun1 = @(x) ((3.*atan(x).^2)./(x.^2 + 1));
fun2 = @(x) ((6.*atan(x))./(x.^2 + 1).^2 - (6.*x.*atan(x).^2)./(x.^2 + 1).^2);

% figure
% x=linspace(40,42,100);
% subplot(2,2,1);
% plot(x,fun(x))
% grid
% x=linspace(40,42,100);
% subplot(2,2,2);
% plot(x,fun1(x))
% grid
% x=linspace(40,42,100);
% subplot(2,2,3);
% plot(x,fun2(x))
% grid

M1 = fun1(40);
M2 = abs(fun2(40));

eps=0.001;
a=40;
b=42;
N1=ceil((b-a)^2*M1/(2*eps))
N2=ceil(sqrt((b-a)^3*M2/(12*eps)))

kr=kreiso_taisnsturu(fun,a,b,N1)
lab=labo_taisnsturu(fun,a,b,N1)
trap=trapecu_metode(fun,a,b,N2)