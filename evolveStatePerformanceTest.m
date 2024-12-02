tic;
generation = 0; m = 15; n = 15;
R = [9 9 10 8 8];
C = [7 8 8 8 9];
updateCellFig(R,C,m,n,generation)
pause(0.01)
generation = generation + 1;

%Evolve pattern indefinitely
[Rnew, Cnew] = evolveState(R,C,m,n,generation); %get pattern after the first tick
pause(0.01)
generation = generation + 1;
while generation <= 30 %as long as pattern is changing following a tick
    R = Rnew; C = Cnew; %pass updated information through
    [Rnew, Cnew] = evolveState(R,C,m,n,generation); %obtain new pattern after one tick
    generation = generation + 1;
pause(0.01)
end
toc;