function [] = p02(x,y)
    
    A=max(x);
    B=min(x);
%   C=max(y);
%   D=min(y);

    figure
    plot(x, y,'-.', 'Color',[0.4660 0.6740 0.1880], 'LineWidth', 2)
    grid on
    title("Gráfica de función de menbresía")
    xlabel("Dominio")
    ylabel("Rango")
    axis([B-1,A+1,-0.1,1.1])
    h = gca;                             % ejes actuales
    h.XAxisLocation = "origin";          % eje en el origen 
    h.YAxisLocation = "origin";          % eje en el origen
    h.Box = "off";                       % apagar caja

end