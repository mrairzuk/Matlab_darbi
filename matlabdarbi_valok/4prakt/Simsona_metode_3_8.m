function It = Simsona_metode_3_8(f,a,b,N)
h=(b-a)/N; %pec formulas dalam uz 3 dalam
 x0=a;
 x1=a+h;
 x2=a+2*h;
 x3=b;

It=3*(h/8)*(f(x0)+3*f(x1)+3*f(x2)+f(x3));
end
