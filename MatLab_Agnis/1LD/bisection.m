function [] = bisection(f,a,b,eps)
# inicializ? iter?ciju skait?t?ju
i=0;
# iter?cijas notiek, kam?r sasniedz precizit?ti
while abs(a-b)>=eps
# pirmais tuvin?jums
    c=(a+b)/2;
    # p?rbauda vai attiec?gaj? interv?l? ir saknes
    if f(a)*f(c)<0
      # p?rkop? v?rt?bas
        b=c;
        # iter?cijas++
        i=i+1;
    # ja a-c nav saknes, tad skatamies vai b l?dz c ir saknes
  elseif f(b)*f(c)<0
    # p?rkop? v?rt?bu
        a=c;
        # palielina iter?cijas numuru
        i=i+1;
    end
end
# izvada
disp(['Sakne ir ' num2str(c) ' ar '  num2str(i) ' iterācijām'])
disp(['Ar precizitāti ' num2str(eps)])
end

