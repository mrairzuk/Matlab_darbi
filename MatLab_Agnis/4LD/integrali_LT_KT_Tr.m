% not?ra ekr?nu un defin? X main?go
clc
syms X

% tiek apr??in?ta prec?za integr??a v?rt?ba, lai secin?tu,
% ka š? integr??a v?rt?bu nemaz nevar apr??in?t element?raj?s funkcij?s
int(sqrt(X*sin(X)),0.4,1.2)  

% tiek apr??in?ta tuvin?t? integr??a v?rt?ba tuvin?ti, 
% izmantojot ieb?v?tu funkciju
fun = @(x) sqrt(x.*sin(x));
int0=integral(fun,0.4,1.2)

% tiek mekl?ti zemintegr??a funkcijas atvasin?jumi, kas
% vajadz?gi, lai noteiktu interv?lu skaitu
atv1=diff(sqrt(X*sin(X))) % taisnst?ru metode
atv2=diff(sqrt(X*sin(X)),2) % trape?u metode
atv4=diff(sqrt(X*sin(X)),4) % Simpsona metode

% tiek defin?ti funkcijas atvasin?jumi
%fun1 = @(x) (sqrt(x.*sin(x)).*(((x.*cos(x))./2)+((sin(x)./2)))./(x.*sin(x));
fun1 = @(x) (sqrt(x.*sin(x)).*(((x.*cos(x))./2)+((sin(x)./2)))./(x.*sin(x)));
fun2 = @(x) (2.*cos(x) - x.*sin(x))./(2.*(x.*sin(x)).^(1./2)) - (sin(x) + x.*cos(x)).^2./(4.*(x.*sin(x)).^(3./2));
fun4 = @(x) (12.*x.^2.*sin(x).^4 - 15.*x.^4.*cos(x).^4 - 15.*sin(x).^4 - 4.*x.^4.*sin(x).^4 + 6.*x.^2.*cos(x).^2.*sin(x).^2 - 20.*x.^4.*cos(x).^2.*sin(x).^2 + 12.*x.*cos(x).*sin(x).^3 + 8.*x.^3.*cos(x).*sin(x).^3 + 12.*x.^3.*cos(x).^3.*sin(x))./(16.*(x.*sin(x)).^(7./2))

figure % b?s konstru?ti funkcijas un to atvasin?jumu grafiki
x=linspace(0.4,1.2,100);
subplot(2,2,1);
plot(x,fun(x))
grid
subplot(2,2,2);
plot(x,fun1(x)) % tiek konstru?ts funkcijas grafiks
grid 
subplot(2,2,3);
plot(x,fun2(x)) % tiek konstru?ts funkcijas grafiks
grid
subplot(2,2,4);
plot(x,fun4(x)) % tiek konstru?ts funkcijas grafiks
grid

% tiks apr??in?ts maksimums funkcijas atvasin?jumiem, kas
% spriežot p?c grafika, apl?kotajai funkcijai tiek sasniegts interv?la galapunkt?
M1=abs(fun1(0.4));
M2=abs(fun2(1.2));
M4=abs(fun4(0.8));

% tiks apr??in?ts cik smalki ir j?sadala interv?ls, lai ieg?tu pras?to
% precizit?ti katrai no metod?m
eps=0.001;
a=0.4;
b=1.2;
N1=ceil((b-a)^2*M1/(2*eps)) % Kreiso un labo taisnst?run
N2=ceil(sqrt((b-a)^3*M2/(12*eps))) % Trape?u
N3=ceil(sqrt((b-a)^3*M2/(24*eps))) % Vid?jo trijst?ru
N4=ceil(((b-a)^5*M4/(180*eps))^(1/4)) % Simpsona 1/3
N5=ceil(((b-a)^5*M4/(80*eps))^(1/4)) % Simpsona 3/8

% tiks konstru?ts apgabals, kura laukums tiek apr??in?ts pielietojot noteikto integr?li
% figure
% area(x,fun(x))

% tiks apr??in?ta tuvin?t? v?rt?ba pielietojot daž?das metodes, kuru
% realiz?cija ir aprakst?ta atseviš?os failos
kr=kreiso_taisnsturu(fun,a,b,N1)
lab=labo_taisnsturu(fun,a,b,N1)
trap=trapecu_metode(fun,a,b,N2)
vid=videjo_taisnsturu(fun,a,b,N3)
# pa??mu 2, jo tika ieg?ts 1, bet ir vajadz?gs p?ra skaitlis
simp13=simpsona_metode(fun,a,b,1)
# nezinu vai šis visp?r pareizi, jo ar? tika ieg?ts N5, bet nosac?jums
# ir, ka vajag dal?mam ar 3, t?p?c pa??mu tuv?ko skaitli, kas izpilda nosac?jumu,
# kas ir 3.
simp38=simpsona_metode_3_8(fun,a,b,3)

# Visprec?z?k? metode ir Simpsona metode