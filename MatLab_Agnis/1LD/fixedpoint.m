function [] = fixedpoint(g,x0,eps)
# apr??ina x(1)
x(1)=g(x0);
# iter?cijas nr.
i=1;
# apr??ina x2
x(i+1)=g(x(i));
# str?d?, kam?r sasniedz precizit?ti
while abs(x(i+1)-x(i))>=eps
    # inkrement?
    i=i+1;
    # apr??ina n?kamo x
    x(i+1)=g(x(i));
end
# izvada
disp(['Sakne = ' num2str(x(i+1)) ' atrasta ar ' num2str(i+1) ' iterācijām '])
disp(['ar precizitāti ' num2str(eps)])
end