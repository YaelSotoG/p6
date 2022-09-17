function [C] = p05(x,y1,y2,z)

    A=max(x);
    B=min(x);

    switch z

        %Minimo
        case 1
            C = min(y1, y2); 

        %Producto algebraico
        case 2
            C= y1.*y2;
        
        %Producto acotado
        case 3
            C = max(0,y1+y2-1); 

        otherwise
            disp("Ingrese 1 si desea un minimo, 2 un procuto algebraico o 3 producto acotado")
    end

    if(z==1 || z==2 || z==3)
        figure
        subplot(3,1,1)
        plot(x, y1,'--', 'Color',[0.6350 0.0780 0.1840], 'LineWidth', 2)
        grid on
        axis([B-1,A+1,-0.1,1.1])
        title('Gráfica del conjunto difuzo A')
        h = gca;                             % ejes actuales
        h.XAxisLocation = "origin";          % eje en el origen
        h.YAxisLocation = "origin";          % eje en el origen
        h.Box = "off"; 


        subplot(3,1,2)
        plot(x, y2,'-.', 'Color',[0.3010 0.7450 0.9330], 'LineWidth', 2)
        grid on
        axis([B-1,A+1,-0.1,1.1])
        title('Gráfica del conjunto difuzo B')
        h = gca;                             % ejes actuales
        h.XAxisLocation = "origin";          % eje en el origen
        h.YAxisLocation = "origin";          % eje en el origen
        h.Box = "off";
         
        subplot(3,1,3)
        plot(x, C,':', 'Color',[0.9290 0.6940 0.1250], 'LineWidth', 2)
        grid on
        axis([B-1,A+1,-0.1,1.1])
        title('Gráfica del conjunto difuzo  C')
        h = gca;                             % ejes actuales
        h.XAxisLocation = "origin";          % eje en el origen
        h.YAxisLocation = "origin";          % eje en el origen
        h.Box = "off"; 
    end

end