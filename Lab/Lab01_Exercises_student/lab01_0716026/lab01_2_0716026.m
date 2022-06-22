%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 1
% Problem number: 2
% Student Name: 蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/27
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Lab Problem 1.2'); 	% show Lab Problem 1.2

while 1
    b = input("Input b: ");
    if(b == 0)
        disp("Thanks for playing");
        return;
    end
    close;
    
    y = -10:0.001:10;
    c_A = abs(sin(y))+1;
    c_B = (-2)*y;
    c_C = -b*(y.^2);
    x1 = (-c_B + sqrt(c_B.^2 - 4*c_A.*c_C))./(2*(c_A));
    x2 = (-c_B - sqrt(c_B.^2 - 4*c_A.*c_C))./(2*(c_A));
    plot(x1, y, 'LineWidth', 3);
    hold on;
    plot(x2, y, 'LineWidth', 3);
    hold on;
    figure(1);
end