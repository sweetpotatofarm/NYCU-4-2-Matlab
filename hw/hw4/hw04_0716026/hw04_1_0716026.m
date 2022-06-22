%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab04
% Problem number: 1
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 5/17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

disp('HW04 Problem 4.1') 	% show HW04 Problem 4.1

while 1
    n = input("Input n: ");
    if(n == 0)
        return;
    end

    a = input('Input a: ');
    b = input('Input b: ');
    c = input('input c: ');
    valid = 0;
    if(a>0 && b>0 && c>0)
        valid = 1;
    end
    if(a<0 && b<0 && c<0)
        valid = 1;
    end
    if(valid == 0)
        disp('input is invalid.');
        return;
    end

    clf;

    Y = rand(n, 1);
    X = a*Y.*Y + b*Y + c;
    M = mean(X);
    SD = std(X);

    Xstart = c;
    Xend = a + b + c;
    if(a>0)
        X2 = Xstart:0.02:Xend;
    else
        X2 = Xstart:-0.02:Xend;
    end

    syms x; syms y;
    func = a*y^2 + b*y + c;
    s = solve(x == func, y);
    d_func = diff(func);
    ty0 = 0.5;
    tx0 = double(subs(func, y, ty0));
    for i = 1:2
        if (double(subs(s(i), tx0))>0)
            cpf = s(i);
            break;
        end
    end
    if (double(subs(d_func, y, ty0)) < 0)
        cpf = 1 - cpf;
    end
    my_pdf = diff(cpf);
    f = double(subs(my_pdf, x, X2));

    if(a>0)
        array = length(X2):-1:1;
    else
        array = 1:1:length(X2);
    end

    figure(1);
    for i=array
        clf;
        h = histogram(X, 'Normalization', 'pdf');
        hold on;
        plot(X2,f,'LineWidth',3);
        hold on;
        plot(X2(i), f(i), '.', 'MarkerSize', 20);
        title(['M: ',num2str(M),' SD: ', num2str(SD), ...
            ' a: ', num2str(a), ' b: ', num2str(b), ' c: ', num2str(c)])
        pause(0.03);
    end

    pause(1);
end