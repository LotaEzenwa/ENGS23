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
% F)
% G)
% H)
% I)
% J)
% K)
% L)
