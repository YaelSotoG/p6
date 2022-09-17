function [comD] = complementoDifuso(x,A,complemento,sw)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    if (complemento==1)
        y=estandar(A);
        imprimir(x,A,y,"estandar")
    elseif (complemento==2) && (sw>-1)
        y=sugeno(A,sw);
        imprimir(x,A,y,"sugeno")
    elseif (complemento==3) && (sw>0)
        y=yager(A,sw);
        imprimir(x,A,y,"yager")
    else
        disp("Ingresa valores permitidos, recuerda que para sugeno s>-1 y para yager w>0")
        y=0;
    end
comD = y;
end

function imp=imprimir(x1,A1,y1,name)
figure
subplot(2,1,1)
        plot(x1, A1,'LineWidth',3)
        grid on
        axis([min(x1)-1,max(x1)+1,-0.1,1.1])
        title('Gráfica del conjunto difuzo')
        h = gca;                             % ejes actuales
        h.XAxisLocation = "origin";          % eje en el origen
        h.YAxisLocation = "origin";          % eje en el origen
        h.Box = "off"; 

subplot(2,1,2)
        plot(x1, y1,'LineWidth',3)
        grid on
        axis([min(x1)-1,max(x1)+1,-0.1,1.1])
        title(["Gráfica del complemento difuzo" name])
        h = gca;                             % ejes actuales
        h.XAxisLocation = "origin";          % eje en el origen
        h.YAxisLocation = "origin";          % eje en el origen
        h.Box = "off"; 
end

function e=estandar(A)
e=1.-A;
end

function su=sugeno(A,s)
su=((1.-A)./(1.+(s.*A)));
end

function y=yager(A,w)
y=(1-(A.^w)).^(1/w);
end
