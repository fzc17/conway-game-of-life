function index = locateCoordinate(coordinate, target)

index = [];
for i=1:length(coordinate)
    if isequal(coordinate{i}, target)
        index = i;
        break;
    end
end

end