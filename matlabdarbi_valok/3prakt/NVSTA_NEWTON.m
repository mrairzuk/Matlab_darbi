clc
syms x y
%definejam funkcijas
f1(x,y)=(-x+sin(y)/2)-1;
f2(x,y)=-2*y+cos(x+0.5)-2;
F=[f1;f2];

%definejam sakumvertibas
X0=[-1.3; -0.6];
%noteiksim funkcijas vertibu sakotneja punkta
F0=F(X0(1),X0(2));
%noteiksim jakobi matricu
J=jacobian([f1,f2],[x;y]);
%noteiksim Jacobi matricas vertibu sakotneja punkta
J0=J(X0(1),X0(2));
%noteiksim jakobi matricas determinantu
det(J0);
% noteiksim pirmo tuvinajumu
 X1=double(X0-J0\F0)
 
 %noteiksim otro tuvinajumu
 F1=F(X1(1),X1(2));
 J1=J(X1(1),X1(2));
 X2=double(X1-J1\F1)
 
 %noteiksim 3 tuvinajumu
 F2=F(X2(1),X2(2));
 J2=J(X2(1),X2(2));
 X3=double(X2-J2\F2)
 
 %noteiksim 4 tuvinajumu
 F3=F(X3(1),X3(2));
 J3=J(X3(1),X3(2));
 X4=double(X3-J3\F3)
 
 %realezesim funkciju
 f1x=diff(f1,x);
 f1y=diff(f1,y);
 f2x=diff(f2,x);
 f2y=diff(f2,y);

 Newton_for_NLS(f1,f2,f1x,f1y,f2x,f2y,-1.3,-0.6,0.001)