//Hypothesis Testing
n = 100;
xbar = 4.8;
s = 2;
alpha = 0.05;
mu = 5;
t = (xbar - mu) / (s / sqrt(n));
pvalue = cdft("PQ", t, n-1);
if pvalue < alpha then
 mprintf("Reject the null hypothesis. The data supports the companys claim at a %f level of significance.\n", alpha);
else
 mprintf("Do not reject the null hypothesis. The data does not support the companys claim at a %f level of significance.\n", alpha);
end
xvalues = [1;2];
yvalues = [xbar;mu];
a=gca();
a.x_location="origin";
a.y_location="origin";
bar(xvalues,yvalues);
xlabel("Sample Mean vs Population Mean");
ylabel("Blood Pressure Decrease (mmHg)");
title("Hypothesis Testing for Blood Pressure Drug");
