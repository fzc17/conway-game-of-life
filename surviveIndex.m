function index = surviveIndex(coord, m, n)

index = []; % Store n-th cell survive

len = length(coord); % Count the number of living cells

% Check for number of neighbours
for i = 1:len
    count = 0;
    for j = -1:1
        for k = -1:1
            if ~isempty(locateCoordinate(coord, [coord{i}(1)+j, coord{i}(2)+k]))
                count = count + 1;
            end
        end
    end
    count = count - 1;
    if count == 2 || count == 3
        index = [index i];
    end
end
         
end