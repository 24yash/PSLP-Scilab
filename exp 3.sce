//Normal Distribution
mu_values = [-2, 0, 2]; 
sigma_values = [0.5, 1, 1.5]; 
x_normal = -5:0.1:5; 

subplot(1, 1, 1);
title("Normal Distribution"); 
xlabel("X"); 
ylabel("Probability Density"); 

for i = 1:length(mu_values)
    mu = mu_values(i);
    sigma = sigma_values(i);
    y_normal = exp(-(x_normal - mu).^2 / (2 * sigma^2)) / (sigma * sqrt(2 * %pi)); 
    plot(x_normal, y_normal, "LineWidth", 2, "DisplayName", sprintf("mu = %g, sigma = %g", mu, sigma));

end

//Exponential

lambda_values = [0.5, 1, 1.5]; 
x_exponential = 0:0.1:5; 


subplot(1, 1, 1);
title("Exponential Distribution"); 
xlabel("X"); 
ylabel("Probability Density"); 

for i = 1:length(lambda_values)
    lambda = lambda_values(i);
    y_exponential = lambda * exp(-lambda * x_exponential); 
    plot(x_exponential, y_exponential, "LineWidth", 2, "DisplayName", sprintf("lambda = %g", lambda)); 

end
