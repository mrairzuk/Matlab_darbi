function [ X1 ] = newton_for_NLS(F1,F2,F1x,F1y,F2x,F2y,x0,y0,eps,x,y)
  J(x,y)=[F1x F1y;F2x F2y];
  X0=[x0;y0];
  J0=J(x0,y0);
  F0=[F1(x0,y0);F2(x0,y0)];
  X1=double(X0-inv(J0)*F0);
  i=1;
  while abs(X1(1)-X0(1))>=eps || abs(X1(2)-X0(2))>=eps
    x0=X1(1);
    y0=X1(2);
    X0=[x0;y0];
    J0=J(X0(1),X0(2));
    F0=[F1(x0,y0);F2(x0,y0)];
    X1=double(X0-J0\F0);
    i=i+1;
  endwhile
  disp(['Sistemas saknes ir atrastas ar ' num2str(i) ' iteracijam '])
  disp(['Ar precizit�ti ' num2str(eps)])
  disp(['Pielietojot Nutona metodi.'])
  disp(['Saknes: :'])
  end
