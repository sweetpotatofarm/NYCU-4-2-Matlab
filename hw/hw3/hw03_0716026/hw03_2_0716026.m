%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 2
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Assignment Problem 3.2') 	% show Assignment Problem 3.2

x = 0:0.01:2*pi;

for i=1:1:5
    r = cos(2*x(1:i)).*sin(2*x(1:i));
    h = polar(x(1:i), r);
    patch(get(h, 'XData'), get(h, 'YData'), 'y');
    disp(get(h, 'YData'));
    pause(0.005);
end