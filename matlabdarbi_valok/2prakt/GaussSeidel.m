function[ ] =GaussSeidel(f1,f2,f3,x1,x2,x3,eps)
x10=f1(x2,x3);
x20=f2(x10,x3);
x30=f3(x10,x20);
i=1;
while abs(x10-x1)>=eps || abs(x20-x2)>=eps || abs(x30-x3)>=eps
    x1=x10;
    x2=x20;
    x3=x30;
    x10=f1(x2,x3);
    x20=f2(x10,x3);
    x30=f3(x10,x20);
    i=i+1;
end
disp('Saknes')
disp(['x1 = ' num2str(x10)])
disp(['x2 = ' num2str(x20)])
disp(['x3 = ' num2str(x30)])
disp(['atrasta ar ' num2str(i) ' iteracijam ' num2str(eps)])
disp('pieletojot Gausa-Zedela metodi')
disp('-----------------------------')
end