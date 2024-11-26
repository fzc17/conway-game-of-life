function surviveC = evolveState(R,C,m,n)

% Translate R and C into cells
coordinate = translateCoordinate(R,C);
surviveC = {};

% Check for surviving cells
surviveN = surviveIndex(coordinate,m,n);
surviveC = coordinate(surviveN);

% Check for awaking cells
awakenC = awakenCoord(coordinate,m,n);

surviveC = [surviveC awakenC];

end