%Lotanna Ezenwa, Problem Set 2, #4
%PS2_4.m
%% Due Wednesday, April 6th, 2016
clear
me = LotaEzenwa();
code = me.id; 

PS_2_4 %To obtain given information


%Given an Ideal Current Source at V_0

I_s = 10; %Amps

%Given Nonideal Voltage Source at V_n+1

V_s = 10; %Volts
r_s = 5; %Ohms


n = 3;
r = 4; %Ohms

nr = r*n;

V3 = r_s*V_s/(r_s+nr);

V = I_s*(r_s+nr);
V0 = V;
V3 = V - nr*I_s +V3;

I = (V0-V3)/nr;
