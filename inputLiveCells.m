function [R, C] = inputLiveCells(m, n)

drawCells(m, n);

title('Click on squares, press Enter to finish.')

R = [];
C = [];

while true
    [x, y, button] = ginput(1);
    if isempty(button) || button == 13
        title('');
        break
    end

    newR = floor(y) + 1;
    newC = floor(x) + 1;

    R = [R; newR];
    C = [C; newC];

    updateCellFig(R,C,m,n)
end

R = R';
C = C';

end