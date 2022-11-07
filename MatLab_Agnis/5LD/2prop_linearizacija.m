clc
% uzdosim datu mas?vus k? matricas-kolonnas
x = [0.1;1;2;4;12;24;36];
y = [2;6;7;10;29;49;70];

% attelo
plot(x,y,'ko')

%linearizacija
%y=x/((b*x)+a)
%A=a; B=b; X=1/x; Y=1/y
%Y=AX+B

%rekina koeficientus
n=(numel(x).^-1);
sumx=(sum(x).^-1);
sumx2=(sum(x.^2).^-1);
sumy=(sum(y).^-1);
sumxy=(sum(x.*y).^-1);

%rekina sistemu
%matricu metode
A=[sumx2 sumx ; sumx n];
B=[sumxy; sumy];
%Matricu dalisana ((inversa matrica A)*B)
X=A\B

%funkcijas vienadojums
disp('Proporcionala aproksimejosa funkcija:')
disp(['y=x/' num2str(X(2)) 'x+' num2str(X(1))])

%iebuveta funkcija, kas uzreiz parada atrisinajumu

hold on
x1=linspace(0.1,36,1000); %smukaka parabola
yplot=x1./((X(2).*x1)+X(1));
plot(x1,yplot,'r')
