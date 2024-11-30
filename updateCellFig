function updateCellFig(R,C)
hold on
L=translateCoordinate(R,C);

for i=1:length(L)
    W = R(i);
    Y = [W-1, W, W, W-1];
    Q = C(i);
    X = [Q-1, Q-1, Q, Q];

    fill(X,Y,'k')
end
end
