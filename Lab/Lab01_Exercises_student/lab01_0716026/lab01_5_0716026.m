%%%%%%%%%%%%%%%%%%%%%%%%%%%0
% Assignment Number: 1
% Problem number: 5
% Student Name: 蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/27
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Lab Problem 1.5'); 	% show Lab Problem 1.5

while 1
    while 1
        d = input("Input d: ");
        if(d < 0)
            return;
        elseif(d >= 0 &&  d <= 1)
            break;
        end
    end

    close;

    t = 0;
    v = [0 8];
    p = [50 0];
    dt = 0.05;
    M = 10000;
    m = 1;

    for t = 0:dt:100
        F = (-p) / norm(p) * m * M / (p*p'); % R1
        a = F/m - (d*v); % R2
        v = v + (a*dt); % R3
        p = p + (v*dt); % R4
        plot(p(1), p(2), '.');
        hold on;
        if(t == 100)
            figure(1);
        end
    end
end
