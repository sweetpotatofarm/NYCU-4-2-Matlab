%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 1
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2022/3/17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% problem 1
clf; clear; clc;
disp('Problem 1');

fprintf('Student ID: 0716026 Name: 蕭楚澔\n');

while 1
    ab_vector = input('Input A and B in vector form: ');
    A = ab_vector(1);
    B = ab_vector(2);
    if A==0 && B==0
        fprintf("Thanks for playing\n");
        return
    end

    clf;
    x = -10:0.05:10;
    for a = A-10:2:A+10
        for b = B-10:2:B+10
            y = a*sin(x)+b.*tan(x./10);
            plot(x, y);
            hold on;
        end
    end
end
    
