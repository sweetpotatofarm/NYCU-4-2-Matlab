%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 3
% Problem number: 3
% Student Name:  øΩ∑°ÊP
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 4/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This callback function is invoked from MATLAB once 
% we register it to our application.
%
% When a key is pressed, this function is invoked.
% Thus, we have a chance to set our variables
% based on the keys that are pressed.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DO NOT modify this file 
% except that you are told to do so.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function m_KeyCallBack_image(src,event)
    disp(event.Key);
global key_pressed_op_1;
global key_pressed_op_2;
global key_pressed_op_3;
global key_pressed_op_4;
global key_pressed_quit;

    
    switch(event.Key) 
        case '0'
            key_pressed_quit = true;
        case '1'
            key_pressed_op_1 = true;
        case '2'
            key_pressed_op_2 = true;
        case 'n'
            key_pressed_op_3 = true;
        case 'm'
            key_pressed_op_4 = true;
        otherwise
            
    end
    
 end