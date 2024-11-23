% Translate R and C into cells

function coord = translateCoordinate(R,C)

coord = {};
for i = 1:length(R)
    coord{i} = [R(i) C(i)];
end

end