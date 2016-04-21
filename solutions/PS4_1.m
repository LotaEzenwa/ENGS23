%Lotanna Ezenwa, Problem Set 4, #1
%PS4_1.m
%% Due Wednesday, April 20th, 2016

clear
me = LotaEzenwa();
code = me.id; 

x = .1;
L = .6;
t = 10000;
xt = [x t];
PS_4_1

k = 100; %w/m*degC

% Tt = []; %filled with data
% 
% m = polyfit(Tt(:,1),log(Tt(:,2)),1);
% 
% 
% h1 = Tt(1,1) - Tt(2,1);
% n = diff(Tt(:,2))/h1;


Tx = [];%filled w/ data

% h2 = Tx(1,1) - Tx(2,1);
% d1 = diff(Tx(:,2),1)/(h2);
% d2 = diff(Tx(:,2),2)/(h2*h2);

% D = n(end)/(d2(end));


%q = abs(-k*max(d1));


xt = [.1 .1];
PS_4_1
figure(2)
hold on
xt = [.1 1];
PS_4_1
figure(2)
print
hold off