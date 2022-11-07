clc

% izsakam mainigos no katra no vienadojumiem
syms X Y 
% sakuma apmainu vietam, lai var normali parrakstit x un y
solve(X-sin(Y+1)==0.8,X)
solve(sin(X-1)+Y==1.4,Y)

%definejam funkcijas, kas vajadziga konvergences apgabala noteiksanai
%vienadojumam pec modula ir jabut mazakam par 1, tad izpildas konvergence
G1(Y)=sin(Y + 1) + 4/5;
G2(X)=7/5 - sin(X - 1);

%nosaka abu funkciju atvasinajumus
G1X=diff(G1,X)
G1Y=diff(G1,Y)
G2X=diff(G2,X)
G2Y=diff(G2,Y)

%atrisinasim vienadojumus, lai novertetu konvergences apgabala robezas
solve(cos(Y + 1)==1)
solve(cos(Y + 1)==-1) 
solve(-cos(X - 1)==1)
solve(-cos(X - 1)==-1)

%definejam funkcijas iteraciju realizesanai
f1=@(y) sin(y + 1) + 4/5; 
f2=@(x) 7/5 - sin(x - 1);

%konstrue grafikus, lai parliecinatos par atrisinajuma eksistenci
x=linspace(0,2,100);
y=linspace(0,2,100);
plot(x,f2(x))
hold on
plot(f1(y),y)

%realizesim parasto iteraciju metodi izmantojot ieprieks izveidoto
%m failu ar dazadiem sakumnosacijumiem
Jacobi_for_NLS(f1,f2,0.5,1.5, 0.001) 
