 
% syms x
x=linspace(0,1,100);
f=@(x) 3.*x-cos(x);
df=@(x) sin(x)+3;
d2f=@(x) cos(x);
g=@(x)(cos(x))./3;
dg=@(x) -sin(x)./3;

subplot(2,3,1);
plot(x,f(x))
grid
subplot(2,3,2);
plot(x,df(x))
grid
subplot(2,3,3);
plot(x,d2f(x))
grid
subplot(2,3,4);
plot(x,g(x))
grid
subplot(2,3,5);
plot(x,dg(x))
grid


parast_iteraciju(g,0,0.001)