function [ ] = PieskaruMetode(f, df, d2f, a, b, eps)
if f(a)*d2f(a)>0
    c1=a-f (a)/df(a);
elseif f(b) * d2f(b)>0
    c1=b-f(b)/df(b);
end
c2=c1-f(c1)/df(c1);
iter=2;
while abs(c2-c1)>=eps
    c1=c2;
    c2=c1-f(c1)/df(c1);
    iter=iter+1;
end
disp(['sakne= ' num2str(c2) ' atrasta ar ' num2str(iter) ' iterācijam '])
disp(['ar precizitāti ' num2str(eps)])
end

