fu_1 = @(t,y) y(2);
fu_2 = @(t,y) -y(2)/t + 4*y(1)/t^2 - 3/t;

f = @(t,y) [fu_1(t,y), fu_2(t,y)];
[t,w] = rk4(f,1,3,[4,3],10);
u_1_exact = @(t) 2*t.^2 + t +t.^-2;
u_1_approx = w(:, 1);
tt = 1:0.01:3;
plot(tt, u_1_exact(tt), t, u_1_approx, "ko")
legend("exact u1", "rk4 u1")

