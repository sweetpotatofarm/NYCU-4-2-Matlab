%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 3
% Student Name:  蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
				        % clear variables, and clear screen

disp('Assignment Problem 3.3') 	% show Assignment Problem 3.3

global key_pressed_op_1;
global key_pressed_op_2;
global key_pressed_op_3;
global key_pressed_op_4;
global key_pressed_quit;

key_pressed_op_1 = false;
key_pressed_op_2 = false;
key_pressed_op_3 = false;
key_pressed_op_4 = false;
key_pressed_quit = false;

disp("0) Show student name and ID. Then quit the program.");
disp("1) Turn on or off a spot light at the center of the image.");
disp("2) Turn on or off a spot light at the right side of the image."); 
disp("n) Press 'n' to reduce the radius of the disk. Each time, reduce r by 20."); 
disp("m) Press 'm' to increase the radius of the disk. Each time, increase r by 20.");

I = imread("tmp.png");
I = imresize(I, [320, 320]);

radius = 160;
x_center = 0;
y_center = 0;
spotlight = 1;

h_fig = figure(1);
set(h_fig,'KeyPressFcn',...
    @m_KeyCallBack_image); % callback function

imshow(I);

while 1
    if (key_pressed_quit)
        disp("0716026  蕭楚澔");
        return;
    end
    if (key_pressed_op_1)
        key_pressed_op_1 = false;
        x_center = 160;
        y_center = 160;
        if(spotlight == 1)
            spotlight = 2;
        else
            spotlight = 1;
        end
        I2 = cal_circle(x_center,y_center,radius,I,spotlight);
        imshow(I2);
    end
    if (key_pressed_op_2)
        key_pressed_op_2 = false;
        x_center = 320;
        y_center = 160;
        if(spotlight == 1)
            spotlight = 2;
        else
            spotlight = 1;
        end
        I2 = cal_circle(x_center,y_center,radius,I,spotlight);
        imshow(I2);
    end
    if (key_pressed_op_3)
        key_pressed_op_3 = false;
        if(radius > 20)
            radius = radius - 20;
        end
        I2 = cal_circle(x_center,y_center,radius,I,spotlight);
        imshow(I2);
    end
    if (key_pressed_op_4)
        key_pressed_op_4 = false;
        if(radius < 300)
            radius = radius + 20;
        end
        I2 = cal_circle(x_center,y_center,radius,I,spotlight);
        imshow(I2);
    end
    pause(0.033);
end

function I2 = cal_circle(c_x,c_y,r,I,light)
    I2 = I;
    circle_arr = ones([320,320]);
    for x = 1:1:320
        for y = 1:1:320
            dist = sqrt(abs(x-c_x)^2 + abs(y-c_y)^2);
            if(dist > r)
                circle_arr(x,y) = 0;
            end
        end
    end
    for x = 1:1:320
        for y = 1:1:320
            if(circle_arr(x,y) == 1)
                if(light == 1)
                    I2(y,x,:) = I(y,x,:)*2;
                else
                    I2(y,x,:) = I(y,x,:)*0.5;
                end
            end
        end
    end
end