function It = trapecu_metode(f,a,b,N)
    h=(b-a)/N;
    It=0;
    for k = 1:(N-1)
        x=a+h*k;
        It=It+feval(f,x);
    end
    It=h*((f(a)+f(b))/2+It);
end