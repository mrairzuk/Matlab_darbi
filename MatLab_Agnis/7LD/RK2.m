function R2=RK2(f,a,b,y0,N)
  h=(b-a)/N;
  Y=zeros(1,N+1);
  X=a:h:b;
  Y(1)=y0;
  for i=1:N
    k_1 = f(X(i),Y(i));
    k_2 = f(X(i+1),Y(i)+h*k_1);
    Y(i+1) = Y(i) + (1/2)*(k_1+k_2)*h;
  end
  R2=Y;
  end
