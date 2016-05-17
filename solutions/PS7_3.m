%Lotanna Ezenwa, Problem Set 7, #3
%PS7_3.m
%% Due Wednesday, May 11, 2016


clear
me = LotaEzenwa();
code = me.id; 
PS_7_3


%Constants
Rrod = 4; %degC/W
R3 = 1; %degC/W
Qmax = 3; %W


% A)
% B)
Qw = [2.05, 1.905, 1.758, 1.609, 1.466];
Tt = [8.225, 9.521, 10.79, 12.06, 13.33];
title_block = sprintf('%s - Problem Set 7, #3',me.name);
x = polyfit(Tt,Qw,1);
rp = -1/x(1);
clf
plot(Qw,Tt)
ylabel('Qwater, Watts')
xlabel('Temp, degC')
title(title_block)

% C)
% D)
% E)
% F)
% G)
% H)
% I)
% J)
% K)
% L)