%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 1
% Problem number: 4
% Student Name: 蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/27
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Lab Problem 1.4'); 	% show Lab Problem 1.4

a = input("Input a: ");
while 1
    dx = input("Input dx: ");
    if(dx >= 0)
        break;
    end
end

e = exp(1);

x = -10:dx:10;
y = ((2*x.^2) + (3*e.^(-x)) - ((100*a)*(sin(5*x))))./(6*x.^2 - 9*x - 42) - 10;
ygidx = (y >= 0);
xu = x;
yu = y;
yu(ygidx == 0) = NaN;
xu(ygidx == 0) = NaN;

plot(xu, yu, 'Color', [0 0 1], 'LineWidth', 2);
hold on;

xd = x;
yd = y;
xd(ygidx == 1) = NaN;
yd(ygidx == 1) = NaN;
plot(xd, yd, 'Color', [1 0 0], 'LineWidth', 2);
figure(1);
ylim([-100 100]);