function It = labo_taisnsturu(f,a,b,N)
h=(b-a)/N; %definejam summu
It=0;       %iteraciju tuvinajums sakuma
for k=1:(N)   %labaja puse
    x=a+h*k;
    It=It+feval(f,x);
end
It=h*It;        %gala formula
end

