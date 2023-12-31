//Fitting of binomial distributions for given n and p
function y = binom_coeff(n,k)
    y = factorial(n)/(factorial(k)*factorial(n-k));
endfunction

N = 1458;
n = 6;
p = 1/3;
x = 0:n;
P = zeros(1,n+1);
for i = 0:n
    P(i+1) = binom_coeff(n,i)*p^i*(1-p)^(n-i);
end
expected_frequencies = P*N;

mprintf("x\tP(X=x)\tP(X=x)*N\n");
for i = 0:n
    mprintf("%d\t%f\t%f\n", i, P(i+1), expected_frequencies(i+1));
end

bar(x, P, 0.5);
xtitle("Binomial Distribution", "x", "P(X=x)");
xgrid();
