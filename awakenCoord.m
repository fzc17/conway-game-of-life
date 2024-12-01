function coordOut = awakenCoord(coordIn, m, n)

coordOut = {};
liveCellCord = coordIn;

% Generate initial dead cell coordinate
lenLiveCell = length(liveCellCord);

coord = liveCellCord;

c = 0;
for i = 1:lenLiveCell
    for j = -1:1
        for k = -1:1
            if isempty(locateCoordinate(coord, [coord{i}(1)+j, coord{i}(2)+k]))
                c = c + 1;
                coord{lenLiveCell + c} = [coord{i}(1)+j, coord{i}(2)+k];
            end
        end
    end
end

c = 0;
coord(1:lenLiveCell) = [];
deadCellCord = coord;
lenDeadCell = length(deadCellCord);

for i = 1:lenDeadCell
    c = 0;
    for j = -1:1
        for k = -1:1
            if ~isempty(locateCoordinate(liveCellCord, [deadCellCord{i}(1)+j, deadCellCord{i}(2)+k]))
                c = c + 1;
            end
        end
    end
    if c == 3
        coordOut{length(coordOut) + 1} = deadCellCord{i}; 
    end
end

end