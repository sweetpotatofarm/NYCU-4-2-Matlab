%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 1
% Problem number: 3
% Student Name: 蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/27
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Lab Problem 1.3'); 	% show Lab Problem 1.3

while 1
    while 1
        m = input("Input m: ");
        if(m >= 0 && m <= 10)
            break;
        else
            disp("m should inside [0,10].")
        end
    end
    if(m == 0)
        disp("Thanks for playing");
        return;
    end

    close;

    x = -10:0.01:10;
    y1 = cos(x);
    plot(x, y1, 'LineWidth',  4);
    hold on;
    y2 = 0;
    for n = 0:1:m
        adder = (-1)^n / factorial(2*n) * (x.^(2*n));
        y2 = y2 + adder;
        plot(x, y2, 'LineWidth', 2);
        hold on;
    end
    
    figure(1);

end