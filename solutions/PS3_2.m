%Lotanna Ezenwa, Problem Set 3, #3
%PS3_3.m
%% Due Wednesday, April 13th, 2016


clear
clf
me = LotaEzenwa();
code = me.id;
PS_3_3


N = 15;

A = diag([-3, -2*ones(1,N-2), -3]);
A = A + diag(ones(1,N-1),1);
A = A + diag(ones(1,N-1),-1);
[V,D] = eig(A);
E = diag(D);
sm = min(abs(E));

