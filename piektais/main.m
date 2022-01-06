clc

x=[1;2;4;8;16;40;50];
y=[-0.1;-1;-1.6;-1.5;-1.8;-2;-1.9];


plot(x,y,'ko')

n=numel(x);
sumx=sum(x);
sumx2=sum(x.^2);
sumx3=sum(x.^3);
sumx4=sum(x.^4);
sumy=sum(y);
sumxy=sum(x.^y);
sumx2y=sum(x.^2.*y);

A=[sumx4 sumx3 sumx2; sumx3 sumx2 sumx; sumx2 sumx n];
B=[sumx2y; sumxy; sumy];

X=A\B;

disp('Kvadratiska aroksimejosa funkcija:')
disp(['y=' num2str(X(1)) 'x^2+' num2str(X(2)) 'x+' num2str(X(3))])

hold on
x1=linspace(1,50,100);
yplot=x1.^2.*X(1)+x1.*X(2)+X(3);
koef=polyfit(x,y,2)
yplot1=x1.^2.*koef(1)+x1.*koef(2)+koef(3);
plot(x1,yplot,'r')
plot(x1,yplot1, 'k')
