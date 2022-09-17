
% Problema 9
%Resuleve el problema 6 para conjuntos en tiempo discreto. Prueba esta función con el inciso d) de la imagen 5 (OperDif5).  
% 
% 

function C = p09(x,A,B,i)
switch i
    
    case 1
        %Por el criterio del maximo
        txt="maximo"
        C=max(A,B)
        
    case 2
        %Por suma algebraica
        txt="suma algebraica"
        C=A+B-A.*B
        
    case 3
        %Por suma acotada
        txt="suma acotada"
        C=min(1,A+B)    
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
title('Grafica del conjunto Difuso C (union de A y B)' + txt)
h=gca;
h.XAxisLocation = "origin";        
h.YAxisLocation = "origin";         
h.Box = "off";
end
%Usamos la función creada 
%% 
%