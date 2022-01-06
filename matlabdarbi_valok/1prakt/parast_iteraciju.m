function [ ] = parast_iteraciju(g,x0,eps)
x(1)=g(x0);
i=1;
x(i+1)=g(x(i));
while abs(x(i+1)-x(i))>eps
    i=i+1;
    x(i+1)=g(x(i));
end
disp(['sakne = ' num2str(x(i+1)) ' atrasta ar ' num2str(i+1) ' iteracijam'])
disp(['ar precizitati ' num2str(eps)])
end

