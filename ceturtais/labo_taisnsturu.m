function It=labo_taisnsturu(f,a,b,N)
    h=(b-a)/N;
    It=0;
    for k=1: N
        x=a+h*k;
        It=It+feval(f,x);
    end
    It=h*It;
end