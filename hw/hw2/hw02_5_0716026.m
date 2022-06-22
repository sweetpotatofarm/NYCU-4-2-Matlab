%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 5
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2022/3/17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% problem 5
clf; clear; clc;
disp('Problem 5');

t = (0);
v = (0);
k = 0.5;
g = -9.81;
p = (10);
dt = 1/30;

while t<=10
    v_new = v(end) + g*dt;
    v = [v, v_new];
    
    p_new = p(end) + k*v(end)*dt;
    if(p_new < 0)
        p_new = 0;
        v(end) = (-0.9) * v(end);
    end
    p = [p, p_new];
    
    t_new = t(end) + dt;
    t = [t, t_new];
end

figure, plot(t, p);
title('plot(t, p)');
figure, plot(t, v);
title('plot(t, v)');
