%Lotanna Ezenwa, Problem Set 2, #2
%PS2_2.m
%% Due Wednesday, April 6th, 2016
clear
me = LotaEzenwa();
code = me.id; 
PS_2_1 %To get Initial Values

PS2_1 %To obtain Eigenvalues for Part B

syms ir1 ir2 V1 V2 ic1 ic2

syms B D E F G R C
B = 5;
D = 6;
E = 6;
F = 7;
G = 2;
R = 1; %Ohm
C = 1; %Farads


V1_0 = .5; %Volts
V2_0 = -2; %Volts

syms V1 V2 p1 p2

a1 = 1/(R*C)*D*[-(E+B), E];
a2 = 1/(R*C)*F*[E, -(E+G)];
A = [a1;a2];
dt = .0001;
t = 0:dt:.25;



V1 = zeros(size(t));
V2 = zeros(size(t));

V1(1) = .5;
V2(1) = -2;

for n = 2:length(V1)
    DV1 = (-66*V1(n-1) + 36*V2(n-1))*dt;
    DV2 = (42*V1(n-1) - 56*V2(n-1))*dt;
    V1(n) = V1(n-1) + DV1;
    V2(n) = V2(n-1) + DV2;
end

clf
title_block = sprintf('%s - Problem Set 2, #2a',me.name);

hold on
plot(t,V1);
plot(t,V2);
title(title_block);

xlabel('t, sec');
ylabel('Voltage, V');
legend('V1(t)','V2(t)');

dt = .0001;
t = 0:dt:.1;

V1 = zeros(size(t));
V2 = zeros(size(t));

V1(1) = 1;

if abs(e1) > abs(e2)
    V2(1) = phi1;
else
    V2(1) = phi2;
end 


for n = 2:length(V1)
    DV1 = (-66*V1(n-1) + 36*V2(n-1))*dt;
    DV2 = (42*V1(n-1) - 56*V2(n-1))*dt;
    V1(n) = V1(n-1) + DV1;
    V2(n) = V2(n-1) + DV2;
end

clf

title_block = sprintf('%s - Problem Set 2, #2b',me.name);

hold on
plot(t,V1);
plot(t,V2);
title(title_block);

xlabel('t, sec');
ylabel('Voltage, V');
legend('V1(t)','V2(t)');


dt = .0001;
t = 0:dt:1;

V1 = zeros(size(t));
V2 = zeros(size(t));

V1(1) = 1;

if abs(e1) > abs(e2)
    V2(1) = phi1;
else
    V2(1) = phi2;
end 


for n = 2:length(V1)
    DV1 = (-66*V1(n-1) + 36*V2(n-1))*dt;
    DV2 = (42*V1(n-1) - 56*V2(n-1))*dt;
    V1(n) = V1(n-1) + DV1;
    V2(n) = V2(n-1) + DV2;
end


clf

title_block = sprintf('%s - Problem Set 2, #2e',me.name);

hold on
plot(V1,V2);
title(title_block);

xlabel('Voltage, V');
ylabel('Voltage, V');
legend('V2(t)/V1(t)');




