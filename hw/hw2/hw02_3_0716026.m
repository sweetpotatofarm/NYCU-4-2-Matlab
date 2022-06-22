%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 3
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2022/3/17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% problem 3
clf; clear; clc;
disp('Problem 3');

fprintf('Student ID: 0716026 Name: 蕭楚澔\n');

while 1
    while 1
        m = input('Input m, m is an integer inside [-1, 10]: ');
        if(m <= 10 && m > -1)
            break;
        elseif(m == -1)
            fprintf('Thanks for playing\n');
            return
        end
    end
    
    clf;
    x = -5:0.01:5;
    
    y1 = sin(x);
    plot(x, y1, 'Linewidth', 4);
    ylim([-1.5 1.5]);
    hold on;
    
    nn = 0;
    while nn <= m
        sum = 0;
        for n = 0:1:nn
            sum = sum + (((-1)^n)/factorial(2*n+1)).*(x.^(2*n+1));
        end
        y2 = sum;
        plot(x, y2, 'Linewidth', 1);
        ylim([-1.5 1.5]);
        hold on;
        nn = nn+1;
    end
end