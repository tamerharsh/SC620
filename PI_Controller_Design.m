% PI controller design for Minimum case 
clc; 
close all ;
s=tf('s');
g11=2.6/(1+62*s);
g12=1.5/((1+23*s)*(1+62*s));
g21=1.4/((1+30*s)*(1+90*s));
g22=2.8/(1+90*s);
G_Minimum=[g11,g12;g21,g22]
% controller parameters
K1=3;
K2=2.7;
Ti1=30;
Ti2=40;


C1=K1*(1+(1/Ti1*s));
C2=K2*(1+(1/Ti2*s));

% input step  signal generation 
% since y1 is paired with u1 and y2 is paired with u2 so applying PI Control PairWise  
p1=C1*g11; 
step(feedback(p1,1))
title('Minimum Phase step response y1 with controller C1 and g11 as the gain matrix ')
figure;
p2=C2*g22;
step(feedback(p2,1))
title('Minimum Phase step response y2 with controller C2 and g22 as the gain matrix ')

