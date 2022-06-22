%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab04
% Problem number: 2
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/20
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

disp('HW04 Problem 4.2') 	% show HW04 Problem 4.2

e = exp(1);

x0 = input("Input x0: ");
if(x0 == 0)
    return;
end

x = 0:0.01:10;
y1 = sin(x);
y2 = cos(2*x);
y3 = x.^2.*sin(x).*(e.^(-(x-1)));
y4 = 4 - x/2;
y = [y1; y2; y3; y4];

fun1 = @(x) abs(sin(x));
fun2 = @(x) abs(cos(2*x));
fun3 = @(x) abs(x.^2.*sin(x).*(e.^(-(x-1))));
fun4 = @(x) abs(4 - x/2);
area1 = integral(fun1, 0, x0);
area2 = integral(fun2, 0, x0);
area3 = integral(fun3, 0, x0);
area4 = integral(fun4, 0, x0);

func2str = ["sin(x)", "cos(2*x)", "x^2*sin(x)*exp^-(x-1)", "4-x/2"];
area = [area1, area2, area3, area4];
sortarea = sort(area);
order = [0, 0, 0, 0];
for i = 1:1:4
    for j = 1:1:4
        if(area(i) == sortarea(j))
            order(i) = j;
        end
    end
end

for n = 1:4:length(x)
    clf;
    for i=1:1:4
        subplot(2,2,i);
        plot(x, y(i,:));
        grid on;
        hold on;
        plot([x(n) x(n)],  [y(i, n) 0]);
        t = "(" + order(i) + ") y" + num2str(i) + " = " + func2str(i) + " Area: " + num2str(area(i));
        title(t);
    end
    pause(0.025);
end

