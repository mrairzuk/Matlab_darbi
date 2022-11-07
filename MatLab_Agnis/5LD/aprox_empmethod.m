clc
% uzdosim datu mas?vus k? matricas-kolonnas
x = [0.1;1;2;4;12;24;36];
y = [2;6;7;10;29;49;70];

% vid. aritm?tiskie

%X vid
xaritm =(x(1)+x(7))/2
xgeom=sqrt(x(1)*x(7))
xharm=(2*x(1)*x(7)/(x(1)+x(7)))

%Y vid
yaritm =(y(1)+y(7))/2
ygeom=sqrt(y(1)*y(7))
yharm=(2*y(1)*y(7)/(y(1)+y(7)))

% lineara funkcija
% xaritm = 18.050, jeb starp 5 un 6
Y1=y(5)+(y(6)-y(5))/(x(6)-x(5))*(xaritm-x(5));
linStarp = abs(Y1-yaritm);

% pakapes funkcija
% xgeom = 1.8974, starp 2 un 3
Y2=y(2)+(y(3)-y(2))/(x(3)-x(2))*(xgeom-x(2));
pakStarp = abs(Y2-ygeom);

% eksponentfunkcija
% xaritm = 18.050, jeb starp 5 un 6
Y3=y(5)+(y(6)-y(5))/(x(6)-x(5))*(xaritm-x(5));
ekspStarp = abs(Y3-ygeom);

% hiperboliska funkcija
% xharm = 0.1994, jeb starp 1 un 2
Y4=y(1)+(y(2)-y(1))/(x(2)-x(1))*(xharm-x(1));
hipStarp = abs (Y4-yaritm);

% proporcionala funkcija
% xaritm = 18.050, jeb starp 5 un 6
Y5=y(5)+(y(6)-y(5))/(x(6)-x(5))*(xaritm-x(5));
propStarp = abs(Y5-yharm);

% 2. veida proporcionala funkcija
% xharm = 0.1994, jeb starp 1 un 2
Y6=y(1)+(y(2)-y(1))/(x(2)-x(1))*(xharm-x(1));
prop2Starp = abs(Y6-yharm);

% logaritmiska funkcija
% xgeom = 1.8974, starp 2 un 3
Y7=y(2)+(y(3)-y(2))/(x(3)-x(2))*(xgeom-x(2));
logStarp = abs(Y7-yaritm);

%starpiba=[linStarp;pakStarp;ekspStarp;hipStarp;propStarp;prop2Starp;geoStarp]
disp('')
disp('Linearas funkcijas kluda:')
disp([num2str(linStarp)])
disp('')
disp('Pakapes funkcijas kluda:')
disp([num2str(pakStarp)])
disp('')
disp('Eksponentfunkcijas kluda:')
disp([num2str(ekspStarp)])
disp('')
disp('Hiperboliskas funkcijas kluda:')
disp([num2str(hipStarp)])
disp('')
disp('Proporcionalas funkcijas kluda:')
disp([num2str(propStarp)])
disp('')
disp('2. veida proporcionalas funkcijas kluda:')
disp([num2str(prop2Starp)])
disp('')
disp('Logaritmiskas funkcijas kluda:')
disp([num2str(logStarp)])
