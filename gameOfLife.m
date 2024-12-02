clear all; clc; close all

m = 15; %number of rows of cells
n = 15; %number of columns of cells
generation = 0;

figure %open figure window
drawCells(m,n) %Draw cells (all dead, i.e., white)
[R,C] = inputLiveCells(m,n,generation); %Populate R and C arrays with subscripts of selected live cells and color live cells black in the figure window
tic;
generation = generation + 1;

%Evolve pattern indefinitely
[Rnew, Cnew] = evolveState(R,C,m,n,generation); %get pattern after the first tick
pause(0.3)
generation = generation + 1;
while ~isequal([R; C],[Rnew; Cnew]) %as long as pattern is changing following a tick
    R = Rnew; C = Cnew; %pass updated information through
    [Rnew, Cnew] = evolveState(R,C,m,n,generation); %obtain new pattern after one tick
    generation = generation + 1;
pause(0.01)
end

title(sprintf('Still life. Generation: %d, Population: %d', generation, length(R)))
tic;
