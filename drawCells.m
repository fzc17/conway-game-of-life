function drawCells(m,n)

figure;
hold on;

axis([0 m 0 n]);

axis equal;
axis off;

set(gca,'xtick', [], 'ytick', []);

for i=0:m
    plot([i i], [0 n],'Color',[.7 .7 .7], 'linewidth', 2);
end
for j=0:n
    plot([0 m], [j j],'Color', [.7 .7 .7], 'linewidth', 2);
end
end

