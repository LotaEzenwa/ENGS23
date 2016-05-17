%Lotanna Ezenwa, Problem Set 7, #2
%PS7_2.m
%% Due Wednesday, May 11, 2016


clear
me = LotaEzenwa();
code = me.id; 
PS_7_2

%Constants

N = 9; %Meters
M = 11; %Meters
k = 50; %W/m degC
H = 0.4; %Meters
Tb2 = 8; %degC
Tb1 = 0; %degC

T = zeros(N+1,M+1);


% A)
g = 0;
delta = inf; %store the total change in temp for each node
while delta > eps %run until there is no measurable change
    delta = 0;
    T(1,:) = Tb1*ones(size(T(1,:)));
    T(end,:) = Tb2*ones(size(T(2,:)));
    for n = 2:N
        for m = 2:M
            nT = (T(n,m-1) + T(n,m+1))/2;
            delta = delta + abs(nT - T(n,m));
            T(n,m) = nT;
        end
        nTv = (T(n-1,:) + T(n+1,:))/2;
        delta = delta + sum(abs(nTv-T(n,:)));
        T(n,:) = nTv;
        g = g +1;
    end
end
% B)
T = T'; %Transpose Matrix because X and Y counterintuitive in Matlab
X = 0:1:N; %Make X and Y Vectors
Y = 0:1:M;
[c, hndl] = contour(X,Y,T);
set(gca,'YDir','reverse')
clabel(c,hndl);
title_block = sprintf('%s - Problem Set 7, #2 - Z = Temperature, degC',me.name);
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
    qxs = qxs - qx(n,1); %Value along T=0 deg boundary
end

QoutL = qys + qxs;
% D)
