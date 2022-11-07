clc
syms x y
%definejam funkcijas

f1(x,y)=sin(x-1)+y-1.4;
f2(x,y)=x-sin(y+1)-0.8;
F(x,y)=[f1; f2];

%definesim sakumvertibas
%X0=[0.5; 1.5];

%noteiksim funkcijas vertibu sakotneja punkta
%F0=F(X0(1),X0(2));

%noteiksim Jakobi matricu
%J(x,y)=jacobian([f1, f2], [x; y]) 

%noteiksim Jakobi matricas vertibu sakumpunkta
%J0=J(X0(1),X0(2));

%parbaudam vai determinants nav nulle
%det(J0)

%pirma tuvininajuma noteiksana - X0 - atvasinajums \ funkcijas vertiba sakotneja punkta, inversa matrica
%X1=double(X0-J0\F0)

%otrais tuvinajums
%F1=F(X1(1),X1(2));
%J1=J(X1(1),X1(2));
%X2=double(X1-J1\F1)

%tresais tuvinajums
%F2=F(X2(1),X2(2));
%J2=J(X2(1),X2(2));
%X3=double(X2-J2\F2)

%atvasinajumi
f1x=diff(f1,x)
f1y=diff(f1,y)
f2x=diff(f2,x)
f2y=diff(f2,y)
clc

Newton_for_NLS(f1,f2,f1x,f1y,f2x,f2y,0.5,1.5,0.001,x,y)