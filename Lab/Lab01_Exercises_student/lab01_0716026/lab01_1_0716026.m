%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 1
% Problem number: 1
% Student Name: 蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/27
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Lab Problem 1.1'); 	% show Lab Problem 1.1
    
while 1
    a = input("Input a: ");
    if(a == 0)
        disp("Thanks for playing");
        return
    end
    
    dx = 0;
    while 1
        dx = input("Input dx: ");
        if(dx == 0)
            dx = 0.05;
            break;
        elseif(dx < 0)
            disp("dx must be a positive number");
        else
            break;
        end
    end
    
    x = -10:dx:10;
    y = a*abs(x) + sin(x);
    plot(x, y, 'LineWidth', 3);
    figure(1);
    hold on;
end
