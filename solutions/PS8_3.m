%Lotanna Ezenwa, Problem Set 8, #3
%PS8_3.m
%% Due Wednesday, May 18th, 2016



clear
me = LotaEzenwa();
code = me.id; 
clf

PS_4_3

p = 120;%sec
k = 125; %W/(m degC)
rho = 9000; %kg/m^3
cp = 500; %J/(kg degC)

T0 = 10; %degC
L = .22; %meters
dx = .005; %meters
M = L/dx; %number of lumps
D = k/(rho*cp); %Diff constant
gamma = .05; 
dt = dx^2*gamma/D;
Tmax = 1000; %seconds
t = 0:dt:Tmax;
T_0 = sin(t*2*pi/p)*T0;

T = zeros(M,length(t));
dTdt = zeros(M,1);

N=M;
A = diag([-3, -2*ones(1,N-2), -3]);
A = A + diag(ones(1,N-1),1);
A = A + diag(ones(1,N-1),-1);

A = gamma*A;
A = A + diag(ones(1,N));



for n=2:length(t)
    T(1,n) = T0;
    
    for m = 2:M-1
        T(m,n) = A(m,m-1)*T(m-1,n-1) + A(m,m)*T(m,n-1) + A(m,m+1)*T(m+1,n-1);
    end
    
    T(M,n) = A(M,M-1)*T(M-1,n-1) + A(M,M)*T(M,n-1);
end

plot(t,(T(22,:) + T(23,:))/2)
title_block = sprintf('%s - Problem Set 4, #3c, gamma = %d',me.name,gamma);
hold on
grid on
title(title_block)
ylabel('temperature, degC');
xlabel('time, t');
legend('x = 5cm');

t0 = find((T(22,:) + T(23,:))/2 > T0/4); %First point that x = 11cm is above T0/4;
t0 = t0(1)*dx;
