function E=Euler(f,a,b,y0,N)
  h=(b-a)/N;
  y=zeros(1,N+1);
  X=a:h:b;
  Y(1)=y0;
  for j=1:N
    Y(j+1)=Y(j)+h*f(X(j),Y(j));
  end
  E=Y;
end

