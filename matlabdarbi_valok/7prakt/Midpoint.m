function M=Midpoint(f,a,b,y0,N)
  h=(b-a)/N;
  halfh=h/2;
  Y=zeros(1,N+1);
  Z=zeros(1,N+1);
  X=a:h:b;
  Y(1)=y0;
  for j=1:N
    Z(j)=Y(j)+halfh*f(X(j),Y(j));
    Y(j+1)=Y(j)+h*f(X(j)+halfh,Z(j));
  end
  M=Y;
  end
