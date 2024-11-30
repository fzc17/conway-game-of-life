function updateCellFig(R,C)
hold on

for i=1:Length(R)
    R_value = R(i);
    Y = [R_value - 1, R_value, R_value, R_value - 1];
    C_value = C(i);
    X = [C_value-1, C_value-1, C_value, C_value];

    fill(X,Y,'k')
end
end
