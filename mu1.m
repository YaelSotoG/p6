function Mu1 = mu1(x,k,m)
if(k>1)
Mu1 = 1./(1.+(k.*(x-m).^2));
else
    disp("k no es mayor a 1")
end
end