%Calculates the zeta function using a series of primes less than N

syms x

N = 10000; %max prime
p = primes(N);
z(x) = 1;
for n=1:length(p)
    z(x) = z(x)*1/(1-p(n)^-x);
    if mod(n,floor(length(p)/10)) == 0
        q = n/length(p) * 100;
        s = 'N at %d percent';
        s = sprintf(s,q);
        disp(s)
    end
end
