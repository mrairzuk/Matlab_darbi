function [ ] = Jacobi_for_NLS(f1,f2,x0,y0,eps)

x1=f1(y0);
y1=f2(x0);
i=1;
while abs(x1-x0)>=eps || abs(y1-y0)>=eps
    x0=x1;
    y0=y1;
    x1=f1(y0);
    y1=f2(x0);
    i=i+1;
end
disp('Nelinieāro vienādojumu sistēmas saknes')
disp(['x = ' num2str(x1)])
disp(['y = ' num2str(y1)])
disp(['atrastas ar ' num2str(i) ' iteracijam ar precizitati ' num2str(eps)])
disp('pielietojot parasto iterāciju metodi')
end