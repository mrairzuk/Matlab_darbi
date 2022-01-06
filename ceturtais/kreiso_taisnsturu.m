function It=kreiso_taisnsturu(f,a,b,N)
    h=(b-a)/N;
    It=0;
    for k=0: (N-1)
        x=a+h*k;
        It=It+feval(f,x);
    end
    It=h*It;
end