%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem Category: lab
% Problem Number: 1
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email Address: bobhsiao.cs07@nycu.edu.tw
% Department: cs
% Date: 5/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show a message about the problem in the exercise/lab/midterm/exam
disp('Lab')  

x = -10:0.1:10;

for k = 1:-0.01:0
    clf;
    for i = 1:1:4
        y1 = cos(2*i*x);
        y2 = 2*x.*sin(i.^2*x)./(x.^2+1) - 2;
        subplot(2,2,i);
        plot(x, y1, 'r', 'LineWidth', 4);
        hold on;
        plot(x, y2, 'b', 'LineWidth', 4);
        hold on;
        ynew = k*y1 + (1-k)*y2;
        plot(x, ynew, 'y', 'LineWidth', 2);
        title({['cos(2*', num2str(i), '*x)']; ['2*x.*sin(', num2str(i), '^2*x)/(x^2+1) - 2']});
    end
    pause(1/30);
end

