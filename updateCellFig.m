function updateCellFig(R,C,m,n)

cla;
hold on

for i=1:length(R)
    R_value = R(i);
    Y = [R_value-1, R_value, R_value, R_value-1];
    C_value = C(i);
    X = [C_value-1, C_value-1, C_value, C_value];

    fill(X,Y,'k')
    drawCells(m,n)
end
end
