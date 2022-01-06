function It = trapecu_metode(f,a,b,N)
h=(b-a)/N; %definejam summu
It=0;       %iteraciju tuvinajums sakuma
for k=1:(N-1)   
    x=a+h*k;
    It=It+feval(f,x);
end
It=h*((f(a)+f(b))/2+It);        %gala formula
end

