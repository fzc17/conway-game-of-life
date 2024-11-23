function n_survive = survive(R,C)

% Translate R and C into cells
coordinate = {};
for i = 1:length(R)
    coordinate{i} = [R(i) C(i)];
end

n_survive = []; % Store n-th cell survive

len = length(R); % Count the number of living cells

% Check for number of neighbours
for i = 1:len
    count = 0;
    for j = -1:1
        for k = -1:1
            if ~isempty(locateCoordinate(coordinate, [coordinate{i}(1)+j, coordinate{i}(2)+k]))
                count = count + 1;
            end
        end
    end
    count = count - 1;
    if count == 2 || count == 3
        n_survive = [n_survive i];
    end
end
         
end