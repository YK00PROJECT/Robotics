clc; clear; close all;
% Testing the functions
my_rotx(pi/4)
my_roty(-pi/4)
my_rotz(pi/2)
my_transl(2,3,4)
my_transl_2("x",pi/4,2,3,4)

% compute the fundamental rotation matrix
function mat_x = my_rotx(theta)
      mat_x = [1        0            0;
               0    cos(theta)    sin(theta);
               0    sin(theta)     cos(theta)];
end
function mat_y = my_roty(theta)
       mat_y = [cos(theta)     0    sin(theta);
                     0         1       0;
                 sin(-theta)   0     cos(theta)];
end
function mat_z  = my_rotz(theta)
        mat_z = [cos(theta) sin(-theta) 0;
                 sin(theta) cos(theta) 0;
                 0 0 1];
end


% Compute the homogenous transformation matrix

function htm = my_transl(x,y,z)
         htm = [1 0 0 x;
                0 1 0 y;
                0 0  1 z;
                0 0 0 1];
end

function htm = my_transl_2(axis,theta,x,y,z)
     t = [x;y;z];
     if(axis =="x")
         htm = [my_rotx(theta) t;
                0 0 0 1];
     elseif(axis =="y")
         htm = [my_roty(theta) t;
                0 0 0 1];
     elseif(axis == "z")
         htm = [my_rotz(theta) t;
                0 0 0 1];
     else
         disp("Incorrect Input Value")
     end
end

