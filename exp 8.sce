// Load data
TV = [230;44;17;151;180;8;57;120];
Radio = [37;39;45;41;10;48;32;19];
Newspaper = [69;45;69;58;75;32;23;8];
Sales = [22;10;9;18;12;6;15;14];

// Create design matrix
X = [ones(8,1) TV Radio Newspaper];

// Define custom multiple linear regression function
function [b] = myRegress(y,X)
    b = inv(X'*X)*X'*y;
endfunction

// Perform multiple linear regression
b = myRegress(Sales,X);

// Display results
mprintf("Intercept: %f\n", b(1));
mprintf("TV Coefficient: %f\n", b(2));
mprintf("Radio Coefficient: %f\n", b(3));
mprintf("Newspaper Coefficient: %f\n", b(4));

// Create scatter plot for TV
subplot(2,2,1);
scatter(TV,Sales);
xlabel("TV Advertising Spending (in thousands of dollars)");
ylabel("Sales (in thousands of units)");
title("Relationship between TV Advertising Spending and Sales");

// Add multiple linear regression line for TV
xline = linspace(min(TV),max(TV),100);
yline = b(1) + b(2)*xline;
plot(xline,yline);

// Create scatter plot for Radio
subplot(2,2,2);
scatter(Radio,Sales);
xlabel("Radio Advertising Spending (in thousands of dollars)");
ylabel("Sales (in thousands of units)");
title("Relationship between Radio Advertising Spending and Sales");

// Add multiple linear regression line for Radio
xline = linspace(min(Radio),max(Radio),100);
yline = b(1) + b(3)*xline;
plot(xline,yline);

// Create scatter plot for Newspaper
subplot(2,2,3);
scatter(Newspaper,Sales);
xlabel("Newspaper Advertising Spending (in thousands of dollars)");
ylabel("Sales (in thousands of units)");
title("Relationship between Newspaper Advertising Spending and Sales");

// Add multiple linear regression line for Newspaper
xline = linspace(min(Newspaper),max(Newspaper),100);
yline = b(1) + b(4)*xline;
plot(xline,yline);
