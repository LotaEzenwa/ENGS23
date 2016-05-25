%Lotanna Ezenwa, Problem Set 8, #3
%PS8_3.m
%% Due Wednesday, May 18th, 2016



clear
me = LotaEzenwa();
code = me.id; 
clf

PS_4_3

L = .22;
tmax = 1000;
D = 4.56*10^-5;

Nx = 19;
Nt = 1001;

Tinit = zeros(Nx,1);
T0 = 10;
TL = 0;

dt = tmax/(Nt-1);
dx = L/(Nx+1);

tspan = 0:dt:tmax;
xspan = 0:dx:L;

gamma = D*dt/dx^2;
if gamma >= 0.5,
    warning('Gamma off')
end;

if Nx == 1
    error('Stop')
else
    A = (1-2*gamma)*diag(ones(1,Nx)) + gamma*diag(ones(1,Nx-1),1) + gamma*diag(ones(1,Nx-1),-1);
end

Bu = gamma*[T0;zeros(Nx-2,1);TL];


T = zeros(Nx,Nt);
T(:,1) = Tinit;
for n=1:Nt-1
    T(:,n+1) = A*T(:,n) + Bu;
end
T = [T0*ones(1,Nt);T;TL*ones(1,Nt)];

plot(tspan,T(14,:))



