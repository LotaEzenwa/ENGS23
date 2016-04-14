%Lotanna Ezenwa, Lab 2, Pre-lab
%Lab2_PL.m
%% Due Thursday, April 14th, 2016

clear
me = LotaEzenwa();
code = me.id;

PL_2

l = .11; %meters
t2l = .09;%meters
t1l = .01;%meters
subm = .01; %meters
k = 200; %Watts/(m*degC);


R1 = .4*8;

diam = 0.5; %inches
radius = diam/2;
rm = radius*2.54; %cm
rcm = rm/100; %meters
A = pi*rcm*rcm; %meters^2

T1s = T1(floor(3*length(T1)/10):floor(4*length(T1)/10));
T2s = T2(floor(3*length(T2)/10):floor(4*length(T2)/10));
TWs = T_water(floor(3*length(T_water)/10):floor(4*length(T_water)/10));

T1m = mean(T1s);
T2m = mean(T2s);
TWm = mean(TWs);

dt = -15;
dx = t2l-t1l;



Q1 = -dt/R1;
T10 = T1(314) + ((l-subm)-t1l)/(t2l-t1l)*dt;


R2 = (T10-21)/Q1;



