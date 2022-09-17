function Mu3 = mu3(x,m) %singleton
syms x1
    y(x1)=piecewise(x1~=m,0,x1==m,1); 
    Mu3 = y(x);
end