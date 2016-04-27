%Lotanna Ezenwa, Problem Set 5, #3
%PS5_3.m
%% Due Wednesday, April 27th, 2016



clear
me = LotaEzenwa();
code = me.id; 


PS_5_3
clf
hold on
grid on
title_block = sprintf('%s - Problem Set 5, #3',me.name);

t = 1:200;

ylabel('D, m^2/s');
xlabel('t, seconds');

plot(t,.0045./(t.*4.*(log(c_1(t)./c_2(t)))));


