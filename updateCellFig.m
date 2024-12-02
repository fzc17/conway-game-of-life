function updateCellFig(R,C,m,n,generation)

cla;
hold on

for i=1:length(R)
    R_value = R(i);
    C_value = C(i);
    
    if R_value <= m && R_value >= 1 && C_value <= n && C_value >= 1
        Y = [R_value-1, R_value, R_value, R_value-1];
        X = [C_value-1, C_value-1, C_value, C_value];
        fill(X,Y,'k')
    end
    drawCells(m,n)
    if generation > 0
        title(sprintf('Generation: %d, Population: %d', generation, length(R)));
    end
end
end
    