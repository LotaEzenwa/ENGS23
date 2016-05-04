%Lotanna Ezenwa, Problem Set 6, #1
%PS6_1.m
%% Due Wednesday, May 4, 2016



clear
me = LotaEzenwa();
code = me.id; 


%P = 4; %Watts
%P = 1; %Watts
%P = 6; %Watts
P = 10; %Watts
PS_6_1


k = 20; %Watts/(m*degC)
A = 0.1; %meters^2

Tx = diff(T)/x(2);

B1Q = k*Tx(1)*A;
B2Q = -k*Tx(end)*A;

Txx = diff(Tx)/x(2);
Txxx = diff(Txx)/x(2);

m = -k*Txxx(end/2+1)*A;
y = -k*Txx(200/2)*A;



