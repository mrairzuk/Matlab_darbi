clc
x=linspace(0,1,100);
f=@(x) 3.*x-cos(x);
plot(x,f(x))

%ar script palidzibu
clc
f=@(x) 3.*x-cos(x);
eps=0.001;
a=1;
b=2;
i=0;
disp ('   i      x    f(x)')
while abs(a-b)>eps
    c=(a+b)/2;
    if ((f(c)*f(a))<0)
        b=c;
    else
        a=c;
    end
    i=i+1;
    disp([i c f(c)])
end