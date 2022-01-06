clc
%1.1
syms x1 x2 x3
solve(4*x1-1*x2+2*x3==1.75,x1)
solve(1*x1-5*x2+3*x3==2.5,x2)
solve(2*x1+1*x2-8*x3==-0.25,x3)

f1=@(x2,x3) x2./4 - x3./2 + 7./16;
f2=@(x1,x3) x1./5 + (3.*x3)./5 - 1./2;
f3=@(x1,x2) x1./4 + x2./8 + 1./32;

x1=7./16;
x2=- 1./2;
x3=1./32;
eps=0.001;

Jacobi(f1,f2,f3,x1,x2,x3,eps)
GaussSeidel(f1,f2,f3,x1,x2,x3,eps)

%1.2

syms X
%tiek aprekinata preciza integrala vertiba, lai secinatu
%ka si integrali vertibu nav iespejams aprekinat elementaras funkcijas

int((X-0.3075)/((X-0.40359)^3)+((X+0.057656)^3),1,3)

% tiek aprekinata tuvinajuma integraa vertibaa, pielietot
% matlaba iebuveto funkciju
fun= @(x)(x-0.3075)./((x-0.40359).^3)+((x+0.057656).^3);   %uzrakstit handle formata
int0=integral(fun,1,3)  %pareiza atbilde(parbaudisanai)

% tiek mekleti zemintegrala funkcija atvasinajumi, kas 
% vajadzigi, lai noteiktu noteiktu intervalu skaitu
atv1=simplify(diff(X-0.3075)/((X-0.40359)^3)+((X+0.057656)^3)) %taisnsturu metodei


% tiks aprekinats cik smalki ir jasadala intervals, 
% lai iegut prasito precizitati katrai no metodem
eps=0.001;
a=1;
b=3;
N1=40;

lab=labo_taisnsturu(fun,a,b,N1)
