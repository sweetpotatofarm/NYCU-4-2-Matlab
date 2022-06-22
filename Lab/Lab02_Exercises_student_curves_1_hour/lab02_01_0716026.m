%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab Two
% Problem number: 1
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 05/06
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% close all windows
% clear variables, and clear screen
close all; clear; clc;

% show Lab Two Problem 1
disp('Lab Two Problem 1');

t = 0;
tmax = 2;
v = [15 20];
p = [0 0];
dt = 0.02;
m = 1;
g = 2;
n = [0 -1];

d1 = 0;
d2 = 0;

while 1
    d1 = input('Input first d: ');
    if (d1<0) 
        return;
    end
    if (d1>=0 && d1<=1) 
        break;
    end    
end

while 1
    d2 = input('Input second d: ');
    if (d2<0) 
        return;
    end
    if (d2>=0 && d2<=1) 
        break;
    end    
end

v1 = v;
v2 = v;
p1 = p;
p2 = p;
x1 = [];
y1 = [];
x2 = [];
y2 = [];

while(t<tmax)
    clf;
    
    F = m*g*n;
    a1 = (F/m) - (d1*v1);
    v1 = v1 + a1*t;
    p1 = p1 + v1*t;
    a2 = (F/m) - (d2*v2);
    v2 = v2 + a2*t;
    p2 = p2 + v2*t;
    t = t + dt;

    x1(end+1) = p1(1);
    y1(end+1) = p1(2);
    x2(end+1) = p2(1);
    y2(end+1) = p2(2);

    subplot(1,2,1);
    plot(p1(1), p1(2), '.');
    hold on;
    plot(x1, y1, Color=[0.4 0.7 1]);
    axis([0 400 -100 100]);

    subplot(1,2,2);
    plot(p2(1), p2(2), '.');
    hold on;
    plot(x2, y2, Color=[0.4 0.7 1]);
    axis([0 400 -100 100]);

    pause(dt);
end
