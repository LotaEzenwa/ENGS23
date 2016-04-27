%Lotanna Ezenwa, Problem Set 5, #2
%PS5_2.m
%% Due Wednesday, April 27th, 2016



clear
me = LotaEzenwa();
code = me.id; 


PS_5_2

hold on
m = -5; %degC/meter
c = -7; %degC
L = 1; %meter

time = 10000;
N = 30;
b = zeros(size(N));
t = 0:.01:L;
f = zeros(time,length(t));
D = 2*10^-5;




m2 = -1.666;
b2 = 14;
L = 1;
for n = 1:N
    b(n) = 2*(12/(n*pi)*cos(n*pi) - 7/(n*pi));
    for tT = 1:time
        f(tT,:) = f(tT,:) + b(n)*sin(n*pi*t)*exp(-n^2*pi^2*D*tT/L^2);
    end
end



tss = t.*m2 + b2;
t0x = t.*m+c;

tsol = 3.3333*t+21;




clf
hold on
grid on
title_block = sprintf('%s - Problem Set 5d/e, #2, N = %d',me.name,N);
plot(t,tsol,'--');
plot(t,tss,'--');
plot(t,f(time,:)+tsol);
plot(t,f(time/4,:)+tsol);
plot(t,f(time/16,:)+tsol);
title(title_block);
legend('y=TSS','y=f(x)','t= 10000 s', 't= 2500 s', 't= 750 s');
ylabel('f(x), degC');
xlabel('x, meters');


% hold off
% clf
% title_block = sprintf('%s - Problem Set 5, #2c, N = %d, Time = %d seconds',me.name,N,time);
% semilogy(1:time,abs(f(:,50)));
% hold on
% grid on
% title(title_block);
% legend('sumN(b_n*sin(n*pi*x)*exp(t/ts))');
% ylabel('f(x), degC');
% xlabel('t, seconds');
