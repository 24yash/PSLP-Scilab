// Task 1: Multiplication of a matrix with a scalar
// Define the matrix and scalar
A = [1 2 3; 4 5 6; 7 8 9];
s = 2;

// Multiply the matrix with the scalar
B = s*A;

// Display the result
disp("Task 1: Multiplication of a matrix with a scalar");
disp(B);

// Task 2: Multiplication of a matrix with a matrix (scalar product)
// Define the matrices
A = [1 2 3; 4 5 6; 7 8 9];
B = [2 3; 4 5; 6 7];

// Multiply the matrices
C = A*B;

// Display the result
disp("Task 2: Multiplication of a matrix with a matrix (scalar product)");
disp(C);

// Task 3: Multiplication of a matrix with a matrix (vector product)
// Define the matrices
A = [1 2 3; 4 5 6; 7 8 9];
B = [1; 2; 3];

// Multiply the matrices
C = A*B;

// Display the result
disp("Task 3: Multiplication of a matrix with a matrix (vector product)");
disp(C);

// Task 4: Loop 100 times and print if the number is odd or even
// Loop 100 times
disp("Task 4: Loop 100 times and print if the number is odd or even");
for i = 1:5
    if modulo(i,2) == 0 then
        disp(i," is even");
    else
        disp(i," is odd");
    end
end

// Task 5: Plot (2D) the square function (squares of 1 to 10)
// Define the x and y values
disp("Task 5: Plot (2D) the square function (squares of 1 to 10)");
x = 1:10;
y = x.^2;
// Plot the graph
plot(x, y);
xtitle("Square function", "x", "y");

