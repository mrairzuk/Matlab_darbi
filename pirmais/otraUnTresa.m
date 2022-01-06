x=linspace(0,1,100);
f=@(x) 2.5.*x-2.^x;
df=@(x) 5./2 - 2.^x.*log(2);
df2=@(x) -2.^x*log(2).^2;
subplot(2,2,1);
plot(x,f(x))
grid
subplot(2,2,2);
plot(x,df(x))
grid
subplot(2,2,3);
plot(x,df2(x))
grid
regulafalsi(f,df2,0,1,0.001)
PieskaruMetode(f, df, df2, 0, 1, 0.001)