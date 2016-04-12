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

w0 = sqrt(K/M);
a1 = [-(K+Kp)/M, -Kp/M]/(K/M);
a2 = [-(Kp/M),-(K+Kp)/M]/(K/M);

A = [a1;a2];

dt = .1;
d = eig(A)';
e1 = sqrt(-d(1));
e2 = sqrt(-d(2));
t = 0:dt:1;

V1 = zeros(size(t));
V2 = zeros(size(t));
V = [V1;V2];

for n = 3:length(V1)
    DV1 = w0*(A(1,1)*V(1,n-1) + A(1,2)*V(2,n-1))*dt^2;
    DV2 = w0*(A(2,1)*V(1,n-1) + A(2,2)*V(2,n-1))*dt^2;
    V1(n) = 2*V1(n-1) + DV1 - V1(n-2);
    V2(n) = 2*V2(n-1) + DV2 - V1(n-2);
end


