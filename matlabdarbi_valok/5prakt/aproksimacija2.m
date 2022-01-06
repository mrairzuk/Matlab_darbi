clc
%uzdosim datu masivu , ka matricas kolonnas
x=[0.1;2;3;8;18;23;48];
y=[0.25;0.12;0.1;0.04;0.03;0.025;0.01];

%attelosim datus koordinatu plaknes
%var ta : plot (x,y,'o','MarkerEdgeColor', 'k','MarkerFaceColor','g','MarkerSize',8 )
plot(x,y,'ko') %bet tas vienkarsak

%aprekinasim visus koeficentus , kas vajadzigi sistemas aprekinasanai
n=numel(x);%2
sumx=sum(x);%1 %2
sumx2=sum(x.^2);%1
sumy=sum(y);%2=
sumxy=sum(x.*y);%1=

%uzdosim matricu A no koeficentiem un matricu B no brivajam locekliem
A=[sumx2 sumx; sumx n];
B=[sumxy; sumy];
%noteiksim sistemas atrisinajumu pielietot matricu metodi
X=A\B;

%uzrakstisim kvadratfunkcijas vienadojumu
disp('parabolatiska aproksimejosa funkcija:')
disp(['y= ' num2str(X(1)) 'x+ ' num2str(X(2))])

hold on
x1=linspace(0.1,48,100);  %pirmais x, pedejais x, ciik dalas dalam
 yplot=x1.*X(1)+X(2);
plot(x1,yplot, 'k')