%interpolation with cubic spline
clc
x=[-1;1;3;5];
y=[-3;0;2;-4];
xx=-1:0.1:5;
yy=spline(x,y,xx);
plot(x,y,'o',xx,yy)
interp1(x,y,4,'spline')