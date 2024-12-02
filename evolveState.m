function [Rnew, Cnew] = evolveState(R,C,m,n,generation)

% Translate R and C into nx2 matrix
coordinate = [R(:), C(:)];

% Make an temporary grid that contains cells (1 for alive, 0 for dead)
minRow = min(coordinate(:, 1)) - 1;
maxRow = max(coordinate(:, 1)) + 1;
minCol = min(coordinate(:, 2)) - 1;
maxCol = max(coordinate(:, 2)) + 1;

grid = zeros(maxRow - minRow + 1, maxCol - minCol + 1);
for i = 1:length(coordinate)
    grid(coordinate(i, 1) - minRow + 1, coordinate(i,2) - minCol + 1) = 1;
end

% Apply convolution method
kernel = [1 1 1; 1 0 1; 1 1 1]; % Define the convolution kernel
neighborCount = conv2(grid, kernel, 'same');

% Search for surviving live cells and awaken dead cells
survive = (grid == 1) & (neighborCount == 2 | neighborCount == 3);
awaken = (grid == 0) & (neighborCount == 3);

newGrid = survive | awaken; 
[Rnew, Cnew] = find(newGrid);
Rnew = Rnew + minRow - 1;
Cnew = Cnew + minCol - 1;
Rnew = Rnew';
Cnew = Cnew';

updateCellFig(Rnew,Cnew,m,n,generation)

end