function evolveState(R,C,m,n)

% Translate R and C into cells
coordinate = translateCoordinate(R,C);

% Check for surviving cells
surviveN = surviveIndex(coordinate);

% Check for dying cells
deadN = deadIndex(coordinate);

% Check for awaking cells

end