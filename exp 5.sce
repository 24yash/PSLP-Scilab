// Binomial Distribution Experiment
N = 100; // Number of trials
x = [0 1 2 3]; // Number of heads
f = [36 40 22 2]; // Observed frequencies

// Calculate mean
mu = sum(x.*f) / sum(f);

// Calculate p
p = mu / 3;

// Define custom binomial coefficient function
function result = binom(n, k)
    result = factorial(n) / (factorial(k) * factorial(n-k));
endfunction

// Calculate expected frequencies
expected_frequencies = zeros(1, length(x));
for i = 1:length(x)
    expected_frequencies(i) = binom(3, x(i)) * p^x(i) * (1-p)^(3-x(i)) * N;
end

// Display results
mprintf("Mean: %f\n", mu);
mprintf("p: %f\n", p);
mprintf("Expected Frequencies: %f %f %f %f\n", expected_frequencies);

// Plot bar graph
figure;
bar([1:4], [f; expected_frequencies]', "grouped");
xlabel("Number of Heads");
ylabel("Frequency");
set(gca(), "color", [1 1 1]);

// Display table
mprintf("\nTable:\n");
mprintf("x\tObserved Frequencies\tExpected Frequencies\n");
for i = 1:length(x)
    mprintf("%d\t%d\t\t\t%f\n", x(i), f(i), expected_frequencies(i));
end
