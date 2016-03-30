%Problem Set 1
%% Due Wednesday, March 30th, 2016
clear
clf
me = LotaEzenwa();
code = me.id;
PS_1

l = axis;
slopeFactor = .02;
i0 = floor(length(t)*slopeFactor);
smTr = smooth(T_rod);
smAir = smooth(T_air);
Tf  = smTr(end);

dti = t(i0) - t(1);
dTT = smTr(i0)-smTr(1);
m0 = dTT/dti;


clf
hold on
grid on
axis(l)

Ta = smTr(floor(i0/2));
t_int = (Tf-smTr(1))/m0;
plot(t,smTr);
plot(t,smTr(1)+m0*t);
plot(t,ones(size(t))*Tf);
legend('Rod (smoothed)','Projection','Final Value')
xlabel('t, min')
ylabel('Temperature, degC')

clf
hold on
grid on
axis(l)


T_37 = smTr(1) - (smTr(1)-smTr(end))*.67;
idx = find(smTr-T_37 < eps,1);
px = t(idx);
plot(t,smTr);
plot(t,ones(size(t))*T_37);
plot(ones(size(t))*t(idx),t,'.');
legend('Rod (smoothed)','e-reduced value (37% change)','x-Coordinate')
xlabel('t, min')
ylabel('Temperature, degC')

close 1
r = logspace(0,1,100);
normT = abs((smTr-Tf)/(smTr(1)-Tf));

pxn = t(find(normT-.05<eps,1))/3;

semilogy(t,normT);
hold on
grid on
semilogy(t,ones(size(t))*.05)
xlabel('t, min');
ylabel('Dimensionless, log(degC/degC)');
legend('T(t)/T_air (smoothed)','y = .05');




