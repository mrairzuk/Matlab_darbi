clc

%izsakam mainigos no katra vienadojuma
syms X Y
solve(-X+sin(Y)/2==1,X)
solve(-2*Y+cos(X+0.5)==2,Y)

%definesim funkcijas kas vajadzigas konvergences apgabalam
G1(Y)=sin(Y)/2 - 1;
G2(X)=cos(X + 1/2)/2 - 1;

%noteiksim funkciju atvasinajumus

G1X=diff(G1,X)
G1Y=diff(G1,Y)
G2X=diff(G2,X)
G2Y=diff(G2,Y)

% %noteiksim vienadojumus, lai novertetu konvergences apgabala robezas
% 
% solve(cos(Y)/2==1)
% solve(cos(Y)/2==-1)
% solve(-sin(X + 1/2)/2==1)
% solve(-sin(X + 1/2)/2==-1)

%definejam funkcijas iteraciju realizaesanai
f1=@(y) (sin(y)./2 - 1);
f2=@(x) (cos(x + 1./2)./2 - 1);

% konstruesim so funkcijas grafikus, lai parliecinatos, ka atrisinajums
% vispar eksite


x=linspace(-1.5,-0.5,100);
y=linspace(-1,0.5,100);
plot(x,f2(x))
hold on
plot(f1(y),y)

% %realezesim parasto iteraciju metodi, ieprieks izveidoto m-failu ar
% %dazadiem sakumnosacijumiem
Jacobi_for_NLS(f1,f2,-1.3,-0.6,0.001)