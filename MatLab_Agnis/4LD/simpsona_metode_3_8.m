function It=simpsona_metode_3_8(f,a,b,n)
% apr??ina interv?lu - N ir oblig?ti j?b?t dal?mam ar 3 bez atlikuma
h=(b-a)/n;

sum1=0.0;
sum2=0.0;
sum3=0.0;

% kubisk?s parabolas gad?jum? ir 4 nezin?mi koeficienti,
% .   .   .   .
% ^   ^   ^   ^
% |   |   |   | 
% ja ir ?etri nezin?mi koeficienti, tas noz?m?, ka vajag 3 interv?lus

% 1. interv?ls
% 1 katru iter?ciju palielin?s par 3 l?dz sasniedz n-2 v?rt?bu
for i=1:3:n-2
    x=a+i*h;
    sum1=sum1+f(x);
end
% 2. interv?ls
% 2 katru iter?ciju palielin?s par 3 l?dz sasniedz n-1 v?rt?bu
for i=2:3:n-1
    x=a+i*h;
    sum2=sum2+f(x);
end
% 3. interv?ls
% 3 katru iter?ciju palielin?s par 3 l?dz sasniedz n-3 v?rt?bu
for i=3:3:n-3
    x=a+i*h;
    sum3=sum3+f(x);
end

It=3*h*(f(a)+3.0*sum1+3.0*sum2+2.0*sum3+f(b))/8.0;
end
