function surviveC = evolveState(R,C,m,n)

% Translate R and C into cells
coordinate = translateCoordinate(R,C);
surviveC = {};

% Check for surviving cells
surviveN = surviveIndex(coordinate,m,n);
for i = 1:length(surviveN)
    surviveC(length(surviveC) + 1) = coordinate(surviveN(i));
end

% Check for awaking cells
awakenC = awakenCoord(coordinate,m,n);

for i = 1:length(awakenC)
    surviveC{length(surviveC) + 1} = [awakenC{i}];
end

end