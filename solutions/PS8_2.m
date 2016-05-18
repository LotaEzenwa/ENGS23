%Lotanna Ezenwa, Problem Set 8, #2
%PS8_2.m
%% Due Wednesday, May 18, 2016


clear
me = LotaEzenwa();
code = me.id; 
PS_8_2


axes = axis();
clf

streamslice(Vx,Vy);
set(gca, 'YDir', 'reverse')
axis(axes)
title_block = sprintf('%s - Problem Set 8, #2',me.name);
ylabel('y, meters')
xlabel('x, meters')
title(title_block)

vx = Vx;
vy = Vy;
Vx = Vx - mean2(Vx);
Vy = Vy - mean2(Vy);
clf
streamslice(Vx,Vy);
set(gca, 'YDir', 'reverse')
axis(axes)
title_block = sprintf('%s - Problem Set 8, #2c',me.name);
ylabel('y, meters')
xlabel('x, meters')
title(title_block)

n1 = [Vx(3,10) Vy(3,10)];
n2 = [Vx(3,9) Vy(3,9)];
n3 = [Vx(4,10) Vy(4,10)];
n4 = [Vx(4,9) Vy(4,9)];
d1 = norm([.2 .5]);
d2 = norm([.8 .5]);

F1 = norm(n1)*2*pi*d1;
F2 = norm(n2)*2*pi*d1;
F3 = norm(n3)*2*pi*d2;
F4 = norm(n4)*2*pi*d2;

F = mean([F1 F2 F3 F4]);