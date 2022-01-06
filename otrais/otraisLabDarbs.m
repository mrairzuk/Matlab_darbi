clc
% syms x1 x2 x3
% solve(3*x1+x2+x3==-10,x1)
% solve(2*x1+4*x2-x3==0,x2)
% solve(x1+x2-3*x3==-2,x3)
f1=@(x2,x3) - x2./3 - x3./3 - 10/3;
f2=@(x1,x3) x3./4 - x1./2;
f3=@(x1,x2) x1./3 + x2./3 + 2/3;

Jacobi(f1, f2, f3, -10/3, 0, 2/3, 10^-3)
disp(' ')
GaussSeidel(f1, f2, f3, -10/3, 0, 2/3, 10^-3)
disp(' ')
disp('vienadojuma atrisinajuma parbaude ar iegutam saknem: ')
disp([num2str(3*-4.0003+2.0002-3.9671e-05) ' ==  -10' ])
disp([num2str(2*-4.0003+4*2.0002+3.9671e-05) ' ==  0' ])
disp([num2str(-4.0003+2.0002+3*3.9671e-05) ' ==  -2' ])
disp('Ar Gausa-Zedela metodi atbildi var atrast atrak!')