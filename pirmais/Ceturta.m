%2.5x-2^x;
%2.5x=2^x
%x=(2^x)/(2.5)

x=linspace(0,1,100);
%syms x
g=@(x) (2.^x)./(2.5);
subplot(1,2,1);
plot(x,g(x))
%dg = (2*2^x*log(2))/5
dg=@(x) (2.*2.^x.*log(2))./5;
subplot(1,2,2);
plot(x,dg(x))
iteracijuMetode(g,0,0.001)