clc
%uzdosim datu masivu , ka matricas kolonnas
x=[0.1;2;3;8;18;23;48];
y=[0.25;0.12;0.1;0.04;0.03;0.025;0.01];

%attelosim datus koordinatu plaknes
%var ta : plot (x,y,'o','MarkerEdgeColor', 'k','MarkerFaceColor','g','MarkerSize',8 )
plot(x,y,'ko') %bet tas vienkarsak

%aprekinasim visus koeficentus , kas vajadzigi sistemas aprekinasanai
n=numel(x);
sumx=sum(x);
sumx2=sum(x.^2);
sumx3=sum(x.^3);
sumx4=sum(x.^4);
sumy=sum(y);
sumxy=sum(x.*y);
sumx2y=sum(x.^2.*y);

%uzdosim matricu A no koeficentiem un matricu B no brivajam locekliem
A=[sumx4 sumx3 sumx2; sumx3 sumx2 sumx; sumx2 sumx n];
B=[sumx2y; sumxy; sumy];
%noteiksim sistemas atrisinajumu pielietot matricu metodi
X=A\B;

%uzrakstisim kvadratfunkcijas vienadojumu
disp('kvadratiska aproksimejosa funkcija:')
disp(['y= ' num2str(X(1)) 'x^2+ ' num2str(X(2)) 'x+ ' num2str(X(3))])

%grafikam pievienosim iegutas parabolas grafiku
hold on
x1=linspace(0.1,48,100);  %pirmais x, pedejais x, ciik dalas dalam
yplot=x1.^2.*X(1)+x1.*X(2)+X(3);
plot(x1,yplot, 'k')

%%parbaude
%koeficentus var iegut ari ar Matlab iebuveto funkciju polyfit
koef=polyfit(x,y,2)

%konstatesim ieguto parabolu plasakaja diapazona
x1=0:0.1:7;
y1=x1.^2.*X(1)+x1.*X(2)+X(3);
plot(x1,y1, 'r')





