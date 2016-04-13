%Lotanna Ezenwa, Problem Set 3, #3
%PS3_3.m
%% Due Wednesday, April 13th, 2016
clear
clf
me = LotaEzenwa();
code = me.id; 
PS_3_3

hold on
m = -5; %degC/meter
c = -7; %degC
L = 1; %meter

N = 3;
b = zeros(size(N));
t = 0:.001:L;
f = zeros(size(t));

for n = 1:N
    b(n) = 2*(12/(n*pi)*cos(n*pi) - 7/(n*pi));
    f = f + b(n)*sin(n*pi*t);
end

clf
hold on
grid on
title_block = sprintf('%s - Problem Set 3, #3b, N = %d',me.name,N);
plot(t,t.*m+c,'--');
plot(t,f);
title(title_block);
legend('y=mx+b','sumN(b_n*sin(n*pi*x))');
ylabel('f(x), degC');
xlabel('x, meters');

N = 10;
b = zeros(size(N));
t = 0:.001:L;
f = zeros(size(t));

for n = 1:N
    b(n) = 2*(12/(n*pi)*cos(n*pi) - 7/(n*pi));
    f = f + b(n)*sin(n*pi*t);
end

clf
hold on
grid on
title_block = sprintf('%s - Problem Set 3, #3b, N = %d',me.name,N);
plot(t,t.*m+c,'--');
plot(t,f);
title(title_block);
legend('y=mx+b','sumN(b_n*sin(n*pi*x))');
ylabel('f(x), degC');
xlabel('x, meters');


N = 30;
b = zeros(size(N));
t = 0:.001:L;
f = zeros(size(t));

for n = 1:N
    b(n) = 2*(12/(n*pi)*cos(n*pi) - 7/(n*pi));
    f = f + b(n)*sin(n*pi*t);
end

clf
hold on
grid on
title_block = sprintf('%s - Problem Set 3, #3b, N = %d',me.name,N);
plot(t,t.*m+c,'--');
plot(t,f);
title(title_block);
legend('y=mx+b','sumN(b_n*sin(n*pi*x))');
ylabel('f(x), degC');
xlabel('x, meters');


N = 300;
b = zeros(size(N));
t = 0:.001:L;
f = zeros(size(t));

for n = 1:N
    b(n) = 2*(12/(n*pi)*cos(n*pi) - 7/(n*pi));
    f = f + b(n)*sin(n*pi*t);
end

clf
hold on
grid on
title_block = sprintf('%s - Problem Set 3, #3b, N = %d',me.name,N);
plot(t,t.*m+c,'--');
plot(t,f);
title(title_block);
legend('y=mx+b','sumN(b_n*sin(n*pi*x))');
ylabel('f(x), degC');
xlabel('x, meters');