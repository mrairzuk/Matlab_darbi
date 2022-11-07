clc
% uzdosim datu mas?vus k? matricas-kolonnas
x = [0.1;1;2;4;12;24;36];
y = [2;6;7;10;29;49;70];

% att?lo
plot(x,y,'ko')

% r??ina koeficientus

n=numel(x);
sumx=sum(x);
sumx2=sum(x.^2);
sumx3=sum(x.^3);
sumx4=sum(x.^4);
sumy=sum(y);
sumxy=sum(x.*y);
sumx2y=sum(x.^2.*y);

% apr??ina sist?mu
% matricu metode
A=[sumx4 sumx3 sumx2; sumx3 sumx2 sumx; sumx2 sumx n];
B=[sumx2y; sumxy; sumy];

% matricu dal?šana ((invers? matrica A)*B)
X=A\B

% uzrakst?sim kvadr?tfunkcijas vien?dojumu
disp('Kvadratiska aproksimejosa funkcija:')
disp(['y=' num2str(X(1)) 'x^2' num2str(X(2)) 'x+' num2str(X(3))])

hold on
% izl?dzina grafiku, lai nav lauztas l?nijas
x1=linspace(0.1,36,100);
yplot=x1.^2.*X(1)+x1.*X(2)+X(3);
plot(x1,yplot,'k')

% funkcija, kas par?da uzreiz atrisin?jumu - j?izmanto eks?men?
koef=polyfit(x,y,2)

