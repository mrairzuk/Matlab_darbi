dsolve('Dy=y/(2*x+1)', 'y(0)=1', 'x')

f=@(x,y) y./(2.*x+1);

a=0;
b=2;
y0=1;

N1=10;
X=a:(b-a)/N1:b;
YE=Euler(f,a,b,y0,N1);
YM=Midpoint(f,a,b,y0,N1);
YR2=RK2(f,a,b,y0,N1);
YR4=RK4(f,a,b,y0,N1);

subplot(2,2,1);
plot(X,YE,X,2.^(1./2).*(X + 1./2).^(1./2))
grid
subplot(2,2,2);
plot(X,YM,X,2.^(1./2).*(X + 1./2).^(1./2))
grid
subplot(2,2,3);
plot(X,YR2,X,2.^(1./2).*(X + 1./2).^(1./2))
grid
subplot(2,2,4);
plot(X,YR4,X,2.^(1./2).*(X + 1./2).^(1./2))
grid