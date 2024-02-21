% The forward kinematic of 5 DOF Robotic Arm
syms q1 q2 q3 q4 q5;
Pi = sym(pi);
q1 = input('Joint angle 1:');
q2 = input('Joint angle 2:');
q3 = input('Joint angle 3:');
q4 = input('Joint angle 4:');
q5 = input('Joint angle 5:');

q1=q1*pi/180;
disp(q1)
q2=q2*pi/180;
disp(q2)
q3=q3*pi/180;
disp(q3)
q4=q4+90;
q4=q4*pi/180;
disp(q4)
q5=q5*pi/180;
disp(q5)

syms q1 q2 q3 q4 q5 d1 a2 a3 a4 d5;
d1=1;
a2=10.5;
a3=14.7;
a4=7.6;
d5=11;
t1 = [cosd(q1) 0 sind(q1) 0; sind(q1) 0 -cosd(q1) 0; 0 1 0 d1; 0 0 0 1];
disp(t1)
t2 = [cosd(q2) -sind(q2) 0 a2*cosd(q2); sind(q2) cosd(q2) 0 a2*sind(q2); 0 0 1 0; 0 0 0 1];
disp(t2)
t3 = [cosd(q3) -sind(q3) 0 a3*cosd(q3); sind(q3) cosd(q3) 0 a3*sind(q3); 0 0 1 0; 0 0 0 1];
disp(t3)
t4 = [cosd(q4) 0 sind(q4) 0; sind(q4) 0 -cosd(q4) 0; 0 1 0 0; 0 0 0 1];
disp(t4)
t5 = [cosd(q5) -sind(q5) 0 0; sind(q5) cosd(q5) 0 0; 0 0 1 a4+d5; 0 0 0 1];
disp(t5)
t = t1*t2*t3*t4*t5;
disp(t)
x=t(1,4)
y=t(2,4)
z=t(3,4)

% Inverse Kinematics of a 5 DOF Robotic Arm

d1 = 1;
a2 = 10.5;
a3 = 14.7;
d4 = 7.6;
d5 = 11;
x = input('Input x location:');
y = input('Input y location:');
z = input('Input z location:');
q1=atan2(y,x);
q1=real(q1);
q3=acos((x^2+y^2+((z-d1)^2)-(a2+a3)^2-(d4+d5)^2)/(2*(a2+a3)*(d4+d5)));
q3=real(q3);
q2=atan2(z-d1,sqrt(x^2+y^2))-atan2(sin(q3)*(d4+d5),(a2+a3)+cos(q3)*(d4+d5));
q2=real(q2);
q1=q1*180/pi;
q2=q2*180/pi;
q3=q3*180/pi;
disp(['q1(in degrees)=' num2str(q1)]);
disp(['q2(in degrees)=' num2str(q2)]);
disp(['q3(in degrees)=' num2str(q3)]);