function [ ] = Jacobi_for_NLS(f1,f2,x0,y0,eps)
  x1=f1(y0);
  y1=f2(x0);
  i=1;
  % strada kamer funkcijas rezultata un padota argumenta starpiba ir lielaka
  % par precizitati, attiecas uz abam asim
  while abs(x1-x0)>= eps || abs(y1-y0)>=eps
    x0=x1;
    y0=y1;
    x1=f1(y0);
    y1=f2(x0);
    i=i+1;
  endwhile
  disp('Nelinearo vienadojumu sistemas saknes:')
  disp(['x = ' num2str(x1)])
  disp(['y = ' num2str(y1)])
  disp (['Atrastas ar ' num2str(i) ' iteraacijam, ar precizitati ' num2str(eps)])
  disp (['Pielietojot iteraciju metodi'])
  end
