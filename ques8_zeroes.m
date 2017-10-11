% zeroes for Minimum case 
clc; 
clear all 
s=tf('s')
gamma1=0.70;
gamma2=0.60;
T1=62;
T2=90;
T3=23;
T4=30;
ke=0.50;
k1=3.33;
k2=3.35;
A1=28;
A2=32;

c1 = T1*k1*(ke/A1);
c2=T2*k2*ke/A2;
tf_a=(c1*c2/((gamma1*gamma2)*((1+s*T1)*(1+s*T2)*(1+s*T3)*(1+s*T4))));
tf_b=(((1+s*T3)*(1+s*T4))-((1-gamma1)*(1-gamma2)/(gamma1*gamma2)));
tf_Minimum=(tf_a)*(tf_b);
zpk(tf_Minimum)
display('the zeroes are at -0.05938 and -0.01743)')

% RGA 

lambda=gamma1*gamma2/((gamma1+gamma2)-1)

RGA=[lambda, 1-lambda; 1-lambda,lambda]

