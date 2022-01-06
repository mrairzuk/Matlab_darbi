clc
syms x y
f1(x,y)=sin(x)+(2*y)-2;
f2(x,y)=cos(y-1)+x-0.8;

F=[f1; f2];

X0=[0.2; 0.1];

F0=F(X0(1),X0(2));

J=jacobian([f1, f2], [x; y]);

J0=J(X0(1),X0(2));

det(J0);

X1=double(X0-J0\F0)

F1=F(X1(1),X1(2));
J1=J(X1(1),X1(2));
X2=double(X1-J1\F1)

F2=F(X2(1),X2(2));
J2=J(X2(1),X2(2));
X3=double(X2-J2\F2)

f1x=diff(f1,x);
f1y=diff(f1,y);
f2x=diff(f2,x);
f2y=diff(f2,y);

Newton_for_NLS(f1,f2,f1x,f1y,f2x,f2y,0.2,0.1,0.001)

