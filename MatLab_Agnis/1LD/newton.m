# izveido funkciju,kurai f, df, d2f, a, b, un eps ir argumenti
function [  ] = newton(f,df,d2f,a,b,eps) 
# p?rbaudam vai punkts a ir kustigais punkts
if f(a)*d2f(a)>0
# j?apr??ina pirmo tuvin?jumu balstoties uz kust?go punktu
    c1=a-f(a)/df(a);
# ja a nav kust?gais punkts, tad p?rbaudam, vai b ir
elseif f(b)*d2f(b)>0
# to pa�u dara ar b
    c1=b-f(b)/df(b);
end
# apr??ina otro tuvin?jumu
c2=c1-f(c1)/df(c1);
# atjauno tagad?j?s iter?cijas k?rtas numuru
iter=2;
# cikls str?d? kam?r tiek sasniegta pietiekama precizit?te
while abs(c2-c1)>=eps
# p?rkop? tuvin?juma v?rt?bu no c1 uz c2
    c1=c2;
    # izr??ina c2 tuvin?jumu
    c2=c1-f(c1)/df(c1);
    # inkrement?jam iter?cijas
    iter=iter+1;
end
# izvad?t
disp(['Sakne = ' num2str(c2) ' atrasta ar ' num2str(iter) ' iterācijām ' ])
disp(['ar precizitāti ' num2str(eps)])

