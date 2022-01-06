function [X1] = Newton_for_NLS(F1,F2,F1x,F1y,F2x,F2y,x0,y0,eps)
J=[F1x F1y;F2x F2y];
X0=[x0;y0];
J0=J(x0,y0);
F0=[F1(x0,y0);F2(x0,y0)];
X1=double(X0-J0\F0);
i=1;
while abs(X1(1)-X0(1))>=eps || abs(X1(2)-X0(2))>=eps
    x0=X1(1);
    y0=X1(2);
    X0=[x0;y0];
    J0=J(X0(1),X0(2));
    F0=[F1(x0,y0);F2(x0,y0)];
    X1=double(X0-J0\F0);
    i=i+1;
end
disp(['atrasta ar ' num2str(i) ' iteracijam ar precizitati ' num2str(eps)])
disp('Pieletojot parasto Njurona metodi')
disp('Saknes redzamas te')
end

