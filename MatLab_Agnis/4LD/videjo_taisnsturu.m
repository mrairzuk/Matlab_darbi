function It=videjo_taisnsturu(f,a,b,N)
  h=(b-a)/N;
  It=0;
  for k=1:N
    x=a+h*(2*k-1)/2;
    It=It+feval(f,x);
    endfor
It=h*It;
end