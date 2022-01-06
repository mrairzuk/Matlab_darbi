function [ ] = bisection_1pr(f,a,b,eps)
i=0;
while abs(b-a)>=eps
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
        i=i+1;
    elseif f(b)*f(c)<0
        a=c;
        i=i+1;
    end
end
disp(['sakne= ' num2str(c) ' atrasta ar ' num2str(i) ' iteracijam'])
disp(['ar precizitati ' num2str(eps)])
end

