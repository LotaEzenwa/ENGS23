%Lotanna Ezenwa, Problem Set 8, #1
%PS8_1.m
%% Due Wednesday, May 18, 2016


clear
me = LotaEzenwa();
code = me.id; 
PS_7_2

%Constants

N = 8; %Meters
M = 10; %Meters
k = 50; %W/m degC
H = 0.4; %Meters
Tb2 = 8; %degC
Tb1 = 0; %degC

T = zeros(N+1,M+1);


% A)
g = 0;
delta = inf; %store the total change in temp for each node
delta2 = 1;
while abs(delta - delta2) > eps %run until there is no measurable change
    delta2 = delta;
    delta = 0;
    T(1,:) = T(2,:);
    %T(1,5) = T(2,5) - 10; %T2x boundary
    T(end,:) = Tb2*ones(size(T(2,:)));
    for n = 2:N
        for m = 2:M
            nT = (T(n,m-1) + T(n,m+1) + T(n,m))/3;
            delta = delta + abs(nT - T(n,m));
            T(n,m) = nT;
        end
        nTv = (T(n-1,:) + T(n+1,:) + T(n,:))/3;
        delta = delta + sum(abs(nTv-T(n,:)));
        T(n,:) = nTv;
        
        g = g +1;
    end
    
end
% B)
T = T'; %Transpose Matrix because X and Y counterintuitive in Matlab
X = 0:1:N; %Make X and Y Vectors
Y = 0:1:M;
[c hndl] = contour(X,Y,T,10);
set(gca,'YDir','reverse')
clabel(c,hndl);
title_block = sprintf('%s - Problem Set 8, #1 - Z = Temperature, degC',me.name);
ylabel('y, meters')
xlabel('x, meters')
title(title_block)
colorbar
% C)


[qx,qy] = gradient(T,1);
qx = -k*qx*H;
qy = -k*qy*H;
qys = 0;
qxs = 0;
sz = size(qx);
for n = 1:sz(1)
    qxs = qxs + qx(n,1); %Value along T=0 deg boundary
end

QoutL = qys + qxs;
% D)
