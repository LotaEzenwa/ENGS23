%Lotanna Ezenwa, Problem Set 7, #1
%PS7_1.m
%% Due Wednesday, May 11, 2016


clear
me = LotaEzenwa();
code = me.id; 
PS_7_1

%Constants:
k = 50; %W/m degC
H = 0.03; %meters



% A)
% B)

[c, hndl] = contour(T,10);
set(gca,'YDir','reverse')
clabel(c,hndl);
% C)
[qx,qy] = gradient(T,1);
qx = -k*qx*H;
qy = -k*qy*H;
hold on
quiver(qx,qy,'k')
% D)
% E)
sz = size(qx);
qys = 0;
qxs = 0;
for n = 1:sz(2)
    qys = qys - qy(1,n) + qy(end,n); %(y,x)
end
for m = 1:sz(1)
    qxs = qxs - qx(m,1) + qx(m,end);
end

Qo = qys + qxs;
% F)
% G)

QG = sum(sum(divergence(qx,qy)));
% H)
% I)
title_block = sprintf('%s - Problem Set 7, #1',me.name);
ylabel('y, meters')
xlabel('x, meters')
title(title_block)
colorbar 
% J)

% K)
% L)
