function drawCells(m,n)

hold on;

axis([0 m 0 n]);

axis equal;
axis off;

for i=0:m
    plot([i i], [0 n],'Color',[.7 .7 .7], 'linewidth', 3);
end
for j=0:n
    plot([0 m], [j j],'Color', [.7 .7 .7], 'linewidth', 3);
end
end

