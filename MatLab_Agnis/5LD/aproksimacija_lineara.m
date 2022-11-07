clc
% uzdosim datu mas?vus k? matricas-kolonnas
x = [0.1;1;2;4;12;24;36];
y = [2;6;7;10;29;49;70];

% attelo
plot(x,y,'ko')

% rekina koeficientus
n=numel(x);
sumx=sum(x);
sumx2=sum(x.^2);
sumy=sum(y); 
sumxy=sum(x.*y);

% rekina sistemu
% matricu metode
A=[sumx2 sumx ; sumx n];
B=[sumxy; sumy];
% matricu dalisana ((inversa matrica A)*B)
X=A\B

%funkcijas vienadojums
disp('Lineara aproksimejosa funkcija:')
disp(['y=' num2str(X(1)) 'x+' num2str(X(2))])

% uzreiz parada atrisinajumu
koef=polyfit(x,y,1) 

hold on
yplot=X(1).*x+X(2);
plot(x,yplot,'k')