x=[1; 2; 3];
y=[4.7; 5.7; 9.2];

figure
subplot(1,2,1)
plot (x,y,'r*')

A=[1 x(1) x(1).^2; 1 x(2) x(2).^2; 1 x(3) x(3).^2];
B=[y(1); y(2); y(3)];
X=A\B;

hold on

x1=1:0.1:3;
y1=X(1) + x1.*X(2) + x1.^2.*X(3);
plot(x1,y1,'g')

disp('Tika ieguts sads interpolacijas polinoms')
disp(['y= ' num2str(X(1)) ' + ' num2str(X(2)) 'x + ' num2str(X(3)) 'x^2'])

a=X(1) + 1.5.*X(2) + 1.5.^2.*X(3)
b=X(1) + 2.3.*X(2) + 2.3.^2.*X(3)


syms X

int((1/(1+((1+X)^(1/3)))),a,b)

fun = @(x) (1./(1+((1+x).^(1./3))));
int0=integral(fun,a,b)

simp=Simpsona_metode(fun,a,b,10)