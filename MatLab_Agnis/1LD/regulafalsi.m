function [  ] = regulafalsi(f,d2f,a,b,eps)
  # apr??ina 1. tuvin?jumu
c1=a-(b-a)/(f(b)-f(a))*f(a);
# p?rbauda vai b ir nekust?gs
if f(b)*d2f(b)>0
  # apr??ina 2. tuvin?jumu, ja p?rbaude izpild?s
    c2=c1-(b-cl)/(f(b)-f(c1))*f(c1);
  # cit?d?k, ja a ir nekust?gs
elseif f(a)*d2f(a)>0
  # apr??ina 2. tuvin?jumu p?c a
    c2=a-(c1-a)/(f(c1)-f(a))*f(a);
end
# iter?cija++
iter=2;
# cikls kam?r nesasniedz precizit?ti
while abs(c2-c1)>=eps
  # ja b nekust?gs
    if f(b)*d2f(b)>0
      # p?rkop? tuvin?juma v?rt?base2dec
        c1=c2;
        # p?rr??ina tuvin?jumu balstoties uz b
        c2=c1-(b-c1)/(f(b)-f(c1))*f(c1);
        # ++
        iter=iter+1;
        # 
    elseif f(a)*d2f(a)>0
        # p?rkop? v?rt?bas
        c1=c2;
        # p?rr??ina tuvin?jumu balstoties uz a
        c2=a-(c1-a)/(f(c1)-f(a))*f(a);
        # ++
        iter=iter+1;
    end
end
# izvada
disp(['Sakne = ' num2str(c2) ' atrasta ar ' num2str(iter) ' iterācijām ' ])
disp(['ar precizitāti ' num2str(eps)])
end