function It=simpsona_metode(f,a,b,N)
  h=(b-a)/(2*N);
  It1=0;
  It2=0;
  for k=1:(N-1)
    x1=a+h*(2*k);
    It1=It1+feval(f,x1);
  end
  for k=1:N
    x2=a+h*(2*k-1);
    It2=It2+feval(f,x2);
  end
  It=h/3*(f(a)+f(b)+2*It1+4*It2);
