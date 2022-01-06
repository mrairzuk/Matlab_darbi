function [ ] = regulafalsi(f,d2f,a,b,eps)
c1=a-(b-a)/(f(b)-f(a))*f(a);
if f(b)*d2f(b)>0
    c2=c1-(b-c1)/(f(b)-f(c1))*f(c1);
elseif f(a)*d2f(a)>0
    c2=a-(c1-a)/(f(c1)-f(a))*f(a);
end
iter=2;
while abs(c2-c1)>=eps
    if f(b)*d2f(b)>0
        c1=c2;
        c2=c1-(b-c1)/(f(b)-f(c1))*f(c1);
        iter=iter+1;
    elseif f(a)*d2f(a)>0
        c1=c2;
        c2=a-(c1-a)/(f(c1)-f(a))*f(a);
        iter=iter+1;
    end
end
disp(['sakne = ' num2str(c2) ' atrasta ar ' num2str(iter) ' iteracijam'])
disp(['ar precizitati ' num2str(eps)])
end
        

