clc
%interpolacijas polinoma iegusana
x=[-1;1;3;5];
y=[-3;0;2;-4];
plot(x,y,'ko')

A=[1 x(1) x(1).^2 x(1).^3; 1 x(2) x(2).^2 x(2).^3; 1 x(3) x(3).^2 x(3).^3; 1 x(4) x(4).^2 x(4).^3];
B=[y(1);y(2);y(3);y(4)];
X=A\B

hold on
x1=-1:0.1:5;
y1=X(1)+x1*X(2)+x1.^2.*X(3)+x1.^3.*X(4);
plot(x1,y1,'r')

disp('Tika ieguts sads interpolacijas polinoms')
disp(['y= ' num2str(X(1)) ' + ' num2str(X(2)) ' x+ ' num2str(X(3)) ' x^2 ' num2str(X(3)) ' x^3 '])