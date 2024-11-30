function updateCellFig(R,C)
hold on
Length=length(R);

for i=1:Length
    Rval = R(i);
    Y = [Rval-1, Rval, Rval, Rval-1];
    Cval = C(i);
    X = [Cval-1, Cval-1, Cval, Cval];

    fill(X,Y,'k')
end
end
