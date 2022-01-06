function It = kreiso_taisnsturu(f,a,b,N)
h=(b-a)/N; %definejam summu
It=0;       %iteraciju tuvinajums sakuma
for k=0:(N-1)   %saskaitit funkcijas vertibas katra intervala kreisaja punkta
    x=a+h*k;
    It=It+feval(f,x);
end
It=h*It;        %gala formula
end

