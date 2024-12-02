tic;
generation = 0; m = 15; n = 15;
R = [2 2 3 4 4 4 3 5 4 12 11 11 11];
C = [3 4 5 5 6 7 7 6 8 12 12 13 14];
updateCellFig(R,C,m,n,generation)
pause(0.01)
generation = generation + 1;

%Evolve pattern indefinitely
[Rnew, Cnew] = evolveState(R,C,m,n,generation); %get pattern after the first tick
pause(0.01)
generation = generation + 1;
while ~isequal([R; C],[Rnew; Cnew]) %as long as pattern is changing following a tick
    R = Rnew; C = Cnew; %pass updated information through
    [Rnew, Cnew] = evolveState(R,C,m,n,generation); %obtain new pattern after one tick
    generation = generation + 1;
pause(0.01)
end
toc;