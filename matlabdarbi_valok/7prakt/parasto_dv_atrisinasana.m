clc
%atrisinasim tiesi vienadojumu
dsolve('Dy=2*(x^2+1)*sqrt(y)', 'y(0)=1', 'x')

%atrisinasim tuvinato vienadojumu
f=@(x,y) 2.*(x.^2+1).*sqrt(y); 
a=0; %intervala sakumpunkts
b=2; %intervala galapunkts
y0=1;   %jauzraksta sakumnosacijuma vertibu

N1=10;
X=a:(b-a)/N1:b;
YE=Euler(f,a,b,y0,N1);
YM=Midpoint(f,a,b,y0,N1);
YR2=RK2(f,a,b,y0,N1);
YR4=RK4(f,a,b,y0,N1);

subplot(2,2,1);
% tiks salidzinats Eilera metodes atrisinajums un tiesais
plot(X,YE,X,((X.*(X.^2 + 3))./3 + 1).^2)

grid
subplot(2,2,2);
% tiks salidzinats mod. Eilera metodes atrisinajums un tiesais
plot(X,YM,X,((X.*(X.^2 + 3))./3 + 1).^2)

grid
subplot(2,2,3);
% tiks salidzinats Runges-Kutta metodes atrisinajums un tiesais
plot(X,YR2,X, ((X.*(X.^2 + 3))./3 + 1).^2)

grid
subplot(2,2,4);
% tiks salidzinats Runges-Kutta metodes atrisinajums un tiesais
plot(X,YR4,X, ((X.*(X.^2 + 3))./3 + 1).^2)
grid