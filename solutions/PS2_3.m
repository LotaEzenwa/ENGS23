%Lotanna Ezenwa, Problem Set 2, #3
%PS2_3.m
%% Due Wednesday, April 6th, 2016
clear
me = LotaEzenwa();
code = me.id; 

R = 1; %Ohm
C = 1; %Farad

a1 = 1/(R*C)*[-3 1 0];
a2 = 1/(R*C)*[1 -2 1];
a3 = 1/(R*C)*[0 1 -3];
A = [a1;a2;a3];
[V, D] = eig(A);
e = diag(D);