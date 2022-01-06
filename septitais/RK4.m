function R4=RK4(f,a,b,y0,N)
  h=(b-a)/N;
  Y=zeros(1,N+1);
  X=a:h:b;
  Y(1)=y0;
  for i=1:N
    k_1 = f(X(i),Y(i));
    k_2 = f(X(i)+0.5*h,Y(i)+0.5*h*k_1);
    k_3 = f((X(i)+0.5*h), (Y(i)+0.5*h*k_2));
    k_4 = f((X(i)+h), (Y(i)+k_3*h));
    Y(i+1) = Y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
  end
  R4=Y;
end
