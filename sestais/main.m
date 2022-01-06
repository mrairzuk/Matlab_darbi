x=[0.1; 0.3; 0.5; 0.7];
y=[2; 4; -3; 1];

figure
subplot(2,1,1)
plot (x,y,'r*')

A=[1 x(1) x(1).^2 x(1).^3; 1 x(2) x(2).^2 x(2).^3; 1 x(3) x(3).^2 x(3).^3; 1 x(4) x(4).^2 x(4).^3];
B=[y(1); y(2); y(3); y(4)];
X=A\B;

hold on

x1=0.1:0.1:0.7;
y1=X(1) + x1.*X(2) + x1.^2.*X(3) + x1.^3.*X(4);
plot(x1,y1,'g')

disp('Tika ieguts sads interpolacijas polinoms')
disp(['y= ' num2str(X(1)) ' + ' num2str(X(2)) 'x + ' num2str(X(3)) 'x^2 + ' num2str(X(4)) 'x^3'])

subplot(2,1,2)
plot (x,y,'r*')
hold on
yy=interp1(x,y,x1,'linear');
plot(x1,yy,'r')