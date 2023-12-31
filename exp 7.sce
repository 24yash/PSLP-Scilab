//Linear Regression for given data points
x_data = [20,60,100,140,160,220,260,300,340,380]
y_data = [0.18,0.37,0.35,0.70,0.56,0.75,0.18,0.36,1.17,1.65]

[a, b] = reglin(x_data, y_data);
scatter(x_data,y_data,30,"x")
plot(x_data, a*x_data+b,"red")
xlabel("X")
ylabel("Y")
title("Simple Linear Regression")
