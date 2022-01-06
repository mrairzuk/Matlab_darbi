clc
%uzdosim datu masivu , ka matricas kolonnas
x=[1;2;4;8;16;40;50];
y=[-0.1;-1;-1.6;-1.5;-1.8;-2;-1.9];

xaritm=(x(1)+x(7))/2                %7-cik elementu mums ir
xgeom=sqrt(x(1)*x(7))               %7-cik elementu mums ir
xharm=(2*x(1)*x(7))/(x(1)+x(7))     %7-cik elementu mums ir

yaritm=(y(1)+y(7))/2                %7-cik elementu mums ir
ygeom=sqrt(y(1)*y(7))               %7-cik elementu mums ir
yharm=(2*y(1)*y(7))/(y(1)+y(7))     %7-cik elementu mums ir

% NR 1. - lineara funkcija
%ta ka xaritm atrodas starp piekto un sesto vertibu, tas aprekinasim
%atbilstoso y sadi
Y1=y(5)+(y(6)-y(5))/(x(6)-x(5))*(xaritm-x(5));
starpiba1=abs(Y1-yaritm);

% NR 2. - pakapes funkcija
% ta ka xgeom atrodas starp treso un ceturto x vertibu, tas aprekinasim 
% atbisltoso y sadi
Y2=y(3)+(y(4)-y(3))/(x(4)-x(3))*(xgeom-x(3));
starpiba2=abs(Y2-ygeom);

% NR 3. - eksponentfunkcija
%ta ka xaritm atrodas starp piekto un sesto vertibu, tas aprekinasim
%atbilstoso y sadi
Y3=y(5)+(y(6)-y(5))/(x(6)-x(5))*(xaritm-x(5));
starpiba3=abs(Y3-ygeom);

% NR 4. - hiperboliska funkcija
% ta ka xharm atrodas starp pirmo un otro x vertibu, tas aprekinasim 
% atbisltoso y sadi
Y4=y(1)+(y(2)-y(1))/(x(2)-x(1))*(xharm-x(1));
starpiba4=abs(Y4-yharm);

% NR 5. - proporcionala funkcija
%ta ka xaritm atrodas piekto un sesto vertibu, tas aprekinasim
%atbilstoso y sadi
Y5=y(5)+(y(6)-y(5))/(x(6)-x(5))*(xaritm-x(5));
starpiba5=abs(Y5-yharm);

% NR 6. - 2veida proporcionala funkcija
% ta ka xharm atrodas starp pirmo un otro x vertibu, tas aprekinasim 
% atbisltoso y sadi
Y6=y(1)+(y(2)-y(1))/(x(2)-x(1))*(xharm-x(1));
starpiba6=abs(Y6-yharm);

% NR 7. - logaritmiska funkcija
% ta ka xgeom atrodas starp treso un ceturto x vertibu, tas aprekinasim 
% atbisltoso y sadi
Y7=y(3)+(y(4)-y(3))/(x(4)-x(3))*(xgeom-x(3));
starpiba7=abs(Y7-yaritm);

starpiba =[starpiba1; starpiba2; starpiba3; starpiba4; starpiba5; starpiba6; starpiba7]

%reizinot iznakumus saprotam ka labaka butu proporcionala funkcija(nevinmer definetas, problemas bur konstruesim)
