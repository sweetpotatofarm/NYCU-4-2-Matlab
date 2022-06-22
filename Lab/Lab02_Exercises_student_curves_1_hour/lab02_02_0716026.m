%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab Two
% Problem number: 2
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 05/06
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% close all windows
% clear variables, and clear screen
close all; clear; clc;

% show Lab Two Problem 2
disp('Lab Two Problem 2');

while 1
    a = input('Input a which is inside[-10, 10]: ');
    if(a==0)
        disp('Thanks for playing.');
        return;
    end
    if(a>=-10 && a<=10)
        break;
    end
end

while 1
    dx = input('Input dx which is inside(0, 1]: ');
    if(dx<0 || dx>=1)
        disp('dx must be inside (0, 1]');
    elseif(dx == 0)
        dx = 0.05;
        break;
    else
        break;
    end
end

x = -10:dx:10;
y = abs(x) + a*sin(x);

for xx = -10:0.025:10
    clf;
    plot(x, y, 'LineWidth', 3);
    hold on;
    yy = abs(xx) + a*sin(xx);
    plot(xx, yy, 'o', 'Color', 'r');
    axis([-10 10 -20 20]);
    pause(0.01);
end
