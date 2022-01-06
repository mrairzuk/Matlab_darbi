clc
syms X
%tiek aprekinata preciza integrala vertiba, lai secinatu
%ka si integrali vertibu nav iespejams aprekinat elementaras funkcijas
int(sin(X)/X,0.3,1.1)
int(2*X+cos(X/2),1,2)

% tiek aprekinata tuvinajuma integraa vertibaa, pielietot
% matlaba iebuveto funkciju
fun= @(x)2.*x+cos(x./2);   %uzrakstit handle formata
int0=integral(fun,1,2)  %pareiza atbilde(parbaudisanai)

% tiek mekleti zemintegrala funkcija atvasinajumi, kas 
% vajadzigi, lai noteiktu noteiktu intervalu skaitu
atv1=simplify(diff(2*X+cos(X/2))) %taisnsturu metodei

% % tiek defineti funkcijas atvasinajumi

fun1=@(x) 2 - sin(X./2)./2;

% tiks aprekinats maksimums funkcijas atvasinajumiem,kas, spriezot pec
% grafika, aplukotajai funkcijai tiek sasniegts intervala galapunkta
M1=abs(fun1(2));

% tiks aprekinats cik smalki ir jasadala intervals, 
% lai iegut prasito precizitati katrai no metodem
eps=0.001;
a=1;
b=2;
%N1=ceil((b-a)^2*M1/(2*eps))
N1=50;

% tiks aprekinata tuvinata vertiba, pieletojot dazadas metodes, kuru
%realizacija ir aprakstita atsevi'skos failos
kr=kreiso_taisnsturu(fun,a,b,N1)


clc
syms x1 x2 x3
solve(5*x1-2*x2+1*x3==5,x1)
solve(2*x1+3.7075*x2-1*x3==6,x2)
solve(1*x1+1*x2-3*x3==8,x3)

f1=@(x2,x3) (2.*x2)./5 - x3./5 + 1;
f2=@(x1,x3) (400.*x3)./1483 - (800.*x1)./1483 + 2400./1483;
f3=@(x1,x2) x1./3 + x2./3 - 8./3;

x1=1;
x2=2400./1483;
x3=- 8./3;
eps=0.001;


Jacobi(f1,f2,f3,x1,x2,x3,eps)





