clc
syms X
%tiek aprekinata preciza integrala vertiba, lai secinatu
%ka si integrali vertibu nav iespejams aprekinat elementaras funkcijas
int(sin(X)/X,0.3,1.1)

% tiek aprekinata tuvinajuma integraa vertibaa, pielietot
% matlaba iebuveto funkciju
fun= @(x)sin(x)./x;   %uzrakstit handle formata
int0=integral(fun,0.3,1.1)  %pareiza atbilde(parbaudisanai)

% tiek mekleti zemintegrala funkcija atvasinajumi, kas 
% vajadzigi, lai noteiktu noteiktu intervalu skaitu
atv1=simplify(diff(sin(X)/X)) %taisnsturu metodei
atv2=simplify(diff(sin(X)/X,2)) %trapecu metodei
atv4=simplify(diff(sin(X)/X,4)) %simpsonu metodei

% % tiek defineti funkcijas atvasinajumi
%fun1=@(x) cos(X)./X - sin(X)./X.^2;
fun1=@(x) -(sin(x) - x.*cos(x))./x.^2;
%fun2=@(x) (2.*sin(X))./X.^3 - sin(X)./X - (2.*cos(X))./X.^2;
fun2=@(x) -(2.*x.*cos(x) - 2.*sin(x) + x.^2.*sin(x))./x.^3;
fun4=@(x) (24.*sin(x) - 24.*x.*cos(x) + 4.*x.^3.*cos(x) - 12.*x.^2.*sin(x) + x.^4.*sin(x))./x.^5;

figure % bus konstrueti un to atvasinajumu grafiki
x=linspace(0.3,1.1,100);
subplot (2,2,1);
plot(x,fun(x))
grid
subplot (2,2,2);
plot(x,fun1(x)) %tiek konstrueti funkcijas grafiki
grid
subplot (2,2,3); %tiek konstrueti funkcijas grafiki
plot(x,fun2(x))
grid
subplot (2,2,4); %tiek konstrueti funkcijas grafiki
plot(x,fun4(x))
grid


% tiks aprekinats maksimums funkcijas atvasinajumiem,kas, spriezot pec
% grafika, aplukotajai funkcijai tiek sasniegts intervala galapunkta
M1=abs(fun1(1.1));  %(punkta maksinums) %varbut vel vajadzes izdarit ta abs(fun1(1)
M2=abs(fun2(0.3));
M4=abs(fun4(0.3));

% tiks aprekinats cik smalki ir jasadala intervals, 
% lai iegut prasito precizitati katrai no metodem
eps=0.001;
a=0.3;
b=1.1;
N1=ceil((b-a)^2*M1/(2*eps))
N2=ceil(sqrt(b-a)^3*M2/(24*eps))
N3=ceil(sqrt(b-a)^3*M2/(12*eps))
N4=ceil(((b-a)^5*M4/(180*eps))^(1/4))
N5=ceil(((b-a)^5*M4/(80*eps))^(1/4))

% tiks konstruets apgabals, kura laukums tiek rekinats
% pieletojot noteikto integrali
figure
area(x,fun(x))

% tiks aprekinata tuvinata vertiba, pieletojot dazadas metodes, kuru
%realizacija ir aprakstita atsevi'skos failos
kr=kreiso_taisnsturu(fun,a,b,N1)
lab=labo_taisnsturu(fun,a,b,N1)
vid=videjo_taisnsturu_metode(fun,a,b,N2)
trap=trapecu_metode(fun,a,b,N3)
simp=Simsona_metode(fun,a,b,2)
simp38=Simsona_metode_3_8(fun,a,b,3)


