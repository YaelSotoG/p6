
%Elabora una función que reciba el conjunto dominio x, el rango A, el rango B, de dos conjunto difusos. Un parámetro adicional que indique el tipo de unión que se quiere hacer (máximo, suma algebraica, suma acotada). La función debe regresar el rango de valores del conjunto resultante C. Además de imprimir una figura (3 por 1) donde se muestren las grafica de los tres conjunto involucrados.
%Prueba esta función con el inciso d) de la imagen 4 (OperDif4). de las notas NO2. Operaciones difusas que se encuentran en la página del curso. Para esto:
% * Reporta los tres tipos de uniones
% * Combina las herramientas que ya tienes desarrolladas (de ser posible) para mostrar una gráfica con los tres tipos de uniones o desarrolla esta gráfica sin utilizar tus herramientas
%En esta sección se espera tres llamadas a la función y un código para generar la cuarta gráfica. 

function C = p06(x,A,B,i)
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
plot(x,A,'LineWidth',3,'Color','b')
grid on
axis([x(1), x(end),-0.1,1.1])
title('Grafica del conjunto Difuso A')
h=gca;
h.XAxisLocation = "origin";         
h.YAxisLocation = "origin";          
h.Box = "off";

subplot(3,1,2)
plot(x,B,'LineWidth',3,'Color','g')
grid on
axis([x(1), x(end),-0.1,1.1])
title('Grafica del conjunto Difuso B')
h=gca;
h.XAxisLocation = "origin";          
h.YAxisLocation = "origin";          
h.Box = "off";

subplot(3,1,3)
plot(x,C,'LineWidth',3,'Color','r')
grid on
axis([x(1), x(end),-0.1,1.1])
title('Grafica del conjunto Difuso C (union de A y B)' + txt)
h=gca;
h.XAxisLocation = "origin";        
h.YAxisLocation = "origin";         
h.Box = "off";
end
%Usamos la función creada 