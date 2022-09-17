function Mu2 = mu2(x,k,a)
if(k>1)
    syms x1
    y(x1)= piecewise(x1<=a,0,x1>a,(k.*(x1-a).^2)/(1.+(k.*(x1-a).^2)));
    Mu2=y(x);
else
    disp("k no es mayor a 1")
end
end