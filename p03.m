function [] = p03(y)

    C=numel(y);
    x=1:C;

    figure
    stem(x, y,'p', 'Color',[0.4940 0.1840 0.5560], 'LineWidth', 2)
    grid on
    title("Gráfica de función de menbresía discreto")
    xlabel("Dominio")
    ylabel("Rango")
    axis([-1,C+1,-0.1,1.1])
    h = gca;                             % ejes actuales
    h.XAxisLocation = "origin";          % eje en el origen 
    h.YAxisLocation = "origin";          % eje en el origen
    h.Box = "off";                       % apagar caja

end