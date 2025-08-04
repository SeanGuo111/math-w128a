function ydot = fpend(y)
theta1 = y(1);
theta2 = y(2);
w1 = y(3);
w2 = y(4);
   
ydot(1) = w1;
ydot(2) = w2;

denom = 3 - cos(2*theta1 - 2*theta2);
num1 = -3*sin(theta1) - sin(theta1 - 2*theta2) - 2*sin(theta1-theta2)*(w2^2 + w1^2*cos(theta1-theta2));
num2 = 2*sin(theta1-theta2)*(2*w1^2 + 2*cos(theta1) + w2^2*cos(theta1-theta2));
ydot(3) = num1 / denom;
ydot(4) = num2 / denom;

end