function [t,w] = rungekutta4(f, a, b, alpha, h)
% Solves y' = f(y) using RK4 (a differential equation where y' depends only on y)
t = a:h:b;
N = (b-a)/h;
w = zeros(N+1, length(alpha));
w(1,:) = alpha;

for i = 1:N
    k1 = h * f(w(i,:));
    k2 = h * f(w(i,:) + k1/2);
    k3 = h * f(w(i,:) + k2/2);
    k4 = h * f(w(i,:) + k3);
    w(i+1,:) = w(i,:) + (k1 + 2*k2 + 2*k3 + k4) / 6;

end