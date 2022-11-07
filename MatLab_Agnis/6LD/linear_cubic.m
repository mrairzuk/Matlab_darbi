% interpolation with linear spline
clc 
x = [-1; 0; 1; 2];
y = [2; 0; 3; -1];
xx = -1:0.1:2;
yy = interp1(x,y,xx,'linear');
plot(x,y,'o',xx,yy)
interp1(x,y,5,'linear');
hold on
% interpolation with cubic spline
clc
xx = -1:0.1:2;
yy = spline(x,y,xx);
plot(x,y,'o',xx,yy)
