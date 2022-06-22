%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 1
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Assignment Problem 3.1') 	% show Assignment Problem 3.1

x = -10:0.01:10;

y1 = sin(5*x)+5;
y2 = 2*cos(x.^2)-5;

z1 = x.*sin(x/2)+5;
z2 = (2*cos(x.^2))./(sin(x)+1.5)-1;

for k = 1:-0.01:0
    clf;

    subplot(1,2,1);
    plot(x, y1, 'LineWidth', 3);
    hold on;
    plot(x, y2, 'LineWidth', 3);
    hold on;
    y = k.*y1 + (1-k).*y2;
    plot(x, y, 'LineWidth', 3);
    hold on;
    set(gca,'FontSize',12); 

    subplot(1,2,2);
    plot(x, z1, 'LineWidth', 3);
    hold on;
    plot(x, z2, 'LineWidth', 3);
    hold on;
    z = k.*z1 + (1-k).*z2;
    plot(x, z, 'LineWidth', 3);
    hold on;
    set(gca,'FontSize',12); 

    pause(1/30);
end