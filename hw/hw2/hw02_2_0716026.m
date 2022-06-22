%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 2
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2022/3/17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% problem 2
clf; clear; clc;
disp('Problem 2');

fprintf('Student ID: 0716026 Name: 蕭楚澔\n');

while 1 
    a = input('Input the range of a in [aMin, aMax] form, aMin < aMax: ');
    aMin = a(1);
    aMax = a(2);

    while 1
        da = input('Input the step size da, da must be a non-negative number: ');
        if(da > 0)
            break;
        elseif(da == 0)
            fprintf('Thanks for playing\n');
            return
        end
    end
    
    clf;
    x = -10:0.05:10;
    e = exp(1);
    for a = aMin:da:aMax
        y = tanh(a*x).*e.^(-cos(x));
        plot(x, y, 'Linewidth', 2);
        hold on;
    end
end
    