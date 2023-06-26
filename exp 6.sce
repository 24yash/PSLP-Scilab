//Fitting of Poisson distributions for given value of lambda.
clc
x = [0, 1, 2, 3];
f = [36, 40, 22, 2];
means = sum(x .* f) / sum(f);
sigmasq = sum(((x-means) .^ 2) .* f) / sum(f);
disp("Mean : "+string(means));
disp("Variance :"+string(sigmasq));
expfreq = exp(-means) * (means .^ x) .* (1 ./ factorial(x)) .* sum(f);
disp("Observed Frequency:");
disp(f);
disp("Expected Frequency:");
disp(expfreq);
subplot(2,2,1);
bar(x, expfreq);
title('Expected Frequency (Poisson Distribution)');
xlabel('Number of Events');
ylabel('Frequency');
subplot(2,2,2);
bar(x, f);
title('Observed Frequency)');
xlabel('Number of Success');
ylabel('Frequency');
