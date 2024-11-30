function [Rnew, Cnew] = evolveState(R,C,m,n)

% Translate R and C into cells
coordinate = translateCoordinate(R,C);
surviveC = {};
Rnew = [];
Cnew = [];

% Check for surviving cells
surviveN = surviveIndex(coordinate,m,n);
surviveC = coordinate(surviveN);

% Check for awaking cells
awakenC = awakenCoord(coordinate,m,n);

surviveC = [surviveC awakenC];

for i = 1:length(surviveC)
    Rnew = [Rnew surviveC{i}(1)];
    Cnew = [Cnew surviveC{i}(2)];
end

updateCellFig(Rnew,Cnew,m,n)

end