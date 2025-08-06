y_exact = @(t) t.*log(t) + 2*t;
f = @(t,y) 1 + y/t;
a = 1;
h = 0.2;
b = 2;
N = (b-a)/h;
t = a:h:b;
w0 = 2;
w1 = y_exact(t(2));
w2 = y_exact(t(3));
w3 = y_exact(t(4));

hold on
tt = a:0.01:b;
plot(tt, y_exact(tt))

%AB2
w = zeros(1,N+1)
w(1) = w0;
w(2) = w1;

for i = 2:N
    w(i+1) = w(i) + h/2*(3*f(t(i), w(i)) - f(t(i-1), w(i-1)))
end
plot(t,w, "bo-", MarkerSize=8)

%AB3
w = zeros(1,N+1)
w(1) = w0;
w(2) = w1;
w(3) = w2;

for i = 3:N
    w(i+1) = w(i) + h/12*(23*f(t(i), w(i)) - 16*f(t(i-1), w(i-1)) + 5*f(t(i-2), w(i-2)))
end
plot(t,w, "ro-", MarkerSize=8)

%AB4
w = zeros(1,N+1)
w(1) = w0;
w(2) = w1;
w(3) = w2;
w(4) = w3;

for i = 4:N
    w(i+1) = w(i) + h/24*(55*f(t(i), w(i)) - 59*f(t(i-1), w(i-1)) + 37*f(t(i-2), w(i-2)) - 9*f(t(i-3), w(i-3)))
end
plot(t,w, "mo-", MarkerSize=8)
legend("Exact", "AB2", "AB3", "AB4")



hold off