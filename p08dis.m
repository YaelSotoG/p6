function C = p08dis(x,A,B,i)
switch i
    
    case 1
        %Por el criterio del minimo
        txt="minimo"
        C=min(A,B)
        
    case 2
        %Por producto algebraico
        txt="producto algebraico"
        C=A.*B
        
    case 3
        %Por producto acotado 
        txt="producto acotado"
        C=max(0,A+B-1)    
    otherwise
        disp('Error en el parametro de selección de tipo de unión')
end 
figure
subplot(3,1,1)
stem(x,A,'LineWidth',3,'Color','b')
grid on
axis([x(1), x(end),-0.1,1.1])
title('Grafica del conjunto Difuso A')
h=gca;
h.XAxisLocation = "origin";         
h.YAxisLocation = "origin";          
h.Box = "off";
subplot(3,1,2)
stem(x,B,'LineWidth',3,'Color','g')
grid on
axis([x(1), x(end),-0.1,1.1])
title('Grafica del conjunto Difuso B')
h=gca;
h.XAxisLocation = "origin";          
h.YAxisLocation = "origin";          
h.Box = "off";
subplot(3,1,3)
stem(x,C,'LineWidth',3,'Color','r')
grid on
axis([x(1), x(end),-0.1,1.1])
title('Grafica del conjunto Difuso C (intersección de A y B)' + txt)
h=gca;
h.XAxisLocation = "origin";        
h.YAxisLocation = "origin";         
h.Box = "off";
end