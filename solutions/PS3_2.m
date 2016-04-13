%Lotanna Ezenwa, Problem Set 3, #2
%PS3_3.m
%% Due Wednesday, April 13th, 2016


clear
me = LotaEzenwa();
code = me.id;


N = 15;

A = diag([-3, -2*ones(1,N-2), -3]);
A = A + diag(ones(1,N-1),1);
A = A + diag(ones(1,N-1),-1);
[V,D] = eig(A);
E = diag(D);
sm = max(1./abs(E));

for n=1:length(E)
    if sm == 1/abs(E(n))
        N = n;
        phi = V(:,n);
        
    end
end

title_block = sprintf('%s - Problem Set 3, #2b, mode = %d',me.name,E(N));


clf
hold on
grid on
stem(1:length(E),-V(:,N))

title(title_block)
xlabel('Node, n');
l = axis;
l(2) = length(E)+1;
axis(l);


clf
title_block = sprintf('%s - Problem Set 3, #2c, mode = %d',me.name,E(N));
t = 0:.01:15;
t2 = 1:1:15;
hold on
grid on
plot(t,max(-V(:,N))*sin(sqrt(-E(N))*(t)))
stem(t2-.5,-V(:,N))
title(title_block)
xlabel('Node, n');
legend('max(Phi)*sin(sqrt(-lambda)*x)','Phi(n)');