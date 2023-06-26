N = 100;
x = [0 1 2 3];
f = [36 40 22 2];

lambda = sum(x.*f)/sum(f);

expected_freq = zeros(1,length(x));
for i=1:length(x)
    expected_freq(i) = exp(-lambda)*lambda^x(i)/prod(1:x(i));
end
expected_freq = expected_freq.*N;

mprintf("X\tObserved Freq\tExpected Freq\n");
for i=1:length(x)
    mprintf("%d\t%d\t\t%.2f\n", x(i), f(i), expected_freq(i));
end

bar(x,expected_freq)
title("Expected Frequencies")
