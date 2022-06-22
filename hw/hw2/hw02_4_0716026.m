%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 4
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2022/3/17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% problem 4
clf; clear; clc;
disp('Problem 4');

x = -5:0.005:10;
y = (5*(x.^2) + 2*x + 7)./((x.^2) - 5*x - 14);

x1 = [];
x2 = [];
y1 = [];
y2 = [];
for index = 1:((10-(-5))/0.005)+1
    if(y(index) >= 0)
        x1(end+1) = x(index);
        y1(end+1) = y(index);
    else
        x2(end+1) = x(index);
        y2(end+1) = y(index);
    end
end
plot(x1, y1, 'Linewidth', 2);
hold on;
plot(x2, y2, 'Linewidth', 2);