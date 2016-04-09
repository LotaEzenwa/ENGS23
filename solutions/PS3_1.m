%Lotanna Ezenwa, Problem Set 3, #1
%PS3_1.m
%% Due Wednesday, April 13th, 2016


clear
me = LotaEzenwa();
code = me.id;
PS_3_1

Kp = 6800; %Newtons/Meter
M = 10; %Kilograms
K = 1000; %Newtons/Meter

a1 = [-(K+Kp)/M, -Kp/M];
a2 = [-(Kp/M),-(K+Kp)/M];

A = [a1;a2];

d = eig(A)';
e1 = sqrt(-d(1));
e2 = sqrt(-d(2));


