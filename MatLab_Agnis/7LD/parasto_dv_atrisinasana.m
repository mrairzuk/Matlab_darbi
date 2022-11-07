clc

dsolve('Dy=1/y*(1+x^2)', 'y(0)=2', 'x')

f=@(x,y) 1./y.*(1+x.^2); 
a=0; 
b=2; 
y0=2;

N1=10;
X=a:(b-a)/N1:b;
YE=Euler(f,a,b,y0,N1);
YM=Midpoint(f,a,b,y0,N1);
YR2=RK2(f,a,b,y0,N1);
YR4=RK4(f,a,b,y0,N1);

subplot(2,2,1);
% tiks salidzinats Eilera metodes atrisinajums un tiesais
plot(X,YE,X,(2.^(1./2).*3.^(1./2).*(X.^3 + 3.*X + 6).^(1./2))./3)

grid
subplot(2,2,2);
% tiks salidzinats mod. Eilera metodes atrisinajums un tiesais
plot(X,YM,X,(2.^(1./2).*3.^(1./2).*(X.^3 + 3.*X + 6).^(1./2))./3)

grid
subplot(2,2,3);
% tiks salidzinats Runges-Kutta metodes atrisinajums un tiesais
plot(X,YR2,X, (2.^(1./2).*3.^(1./2).*(X.^3 + 3.*X + 6).^(1./2))./3)

grid
subplot(2,2,4);
% tiks salidzinats Runges-Kutta metodes atrisinajums un tiesais
plot(X,YR4,X, (2.^(1./2).*3.^(1./2).*(X.^3 + 3.*X + 6).^(1./2))./3)
grid