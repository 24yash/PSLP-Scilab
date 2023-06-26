// Define the number of iterations
N = [10 20 50 100 1000 10000];

// Initialize array for the probability of getting a head
p = zeros(1, length(N));

// Loop through the iterations
for n = 1:length(N)
    // Initialize the count of heads
    count = 0;
    
    // Flip the coin N(n) times
    for i = 1:N(n)
        // Generate a random number between 0 and 1
        r = rand();
        
        // If the random number is less than 0.5, count a head
        if r < 0.5 then
            count = count + 1;
        end
    end
    
    // Calculate the probability of getting a head
    p(n) = count/N(n);
end

// Plot the probability of getting a head as a function of the number of flips
plot(N, p, '-o');
xlabel("Number of flips");
ylabel("Probability of getting a head");
title("Coin Flipping Simulation");

// Plot a horizontal line at 0.5
plot([0, max(N)], [0.5, 0.5], 'r--');

// Show that the graph asymptotically touches the 0.5 line as the number of iterations increase
// Note: The following line may take some time to run for larger values of N
disp(p - 0.5);
