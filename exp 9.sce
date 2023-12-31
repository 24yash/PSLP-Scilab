// Load data
Dosage = [1;2;3;4;5;6;7;8];
Effectiveness = [0;0;0;1;1;1;1;1];

// Define logistic function
function y = logistic(b,x)
    y = 1./(1+exp(-(b(1)+b(2)*x)));
endfunction

// Define sum of squared errors function
function sse = computeSSE(b,x,y)
    yhat = logistic(b,x);
    sse = sum((y-yhat).^2);
endfunction

// Define custom optimization function
function [b,fval] = myOptim(fun,b0,x,y)
    // Set optimization parameters
    maxiter = 1000;
    tol = 1e-6;
    
    // Initialize variables
    b = b0;
    fval = fun(b,x,y);
    
    // Perform optimization
    for iter = 1:maxiter
        // Compute gradient
        h = 1e-6;
        n = length(b);
        grad = zeros(n,1);
        for i = 1:n
            bi = b;
            bi(i) = bi(i) + h;
            grad(i) = (fun(bi,x,y) - fval)/h;
        end
        
        // Update coefficients
        alpha = 0.01;
        bnew = b - alpha*grad;
        
        // Compute new function value
        fvalnew = fun(bnew,x,y);
        
        // Check for convergence
        if abs(fvalnew - fval) < tol
            break;
        end
        
        // Update variables
        b = bnew;
        fval = fvalnew;
    end
endfunction

// Set initial values for coefficients
b0 = [0;0];

// Perform non-linear regression
[b,fval] = myOptim(computeSSE,b0,Dosage,Effectiveness);

// Display results
mprintf("Intercept: %f\n", b(1));
mprintf("Dosage Coefficient: %f\n", b(2));

// Create scatter plot
scatter(Dosage,Effectiveness);

// Add labels
xlabel("Dosage (in milligrams)");
ylabel("Effectiveness (0 = not effective, 1 = effective)");
title("Relationship between Dosage and Effectiveness");

// Add non-linear regression curve
xline = linspace(min(Dosage),max(Dosage),100);
yline = logistic(b,xline);
plot(xline,yline);
