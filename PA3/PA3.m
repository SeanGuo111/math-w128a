fp = @(y) fpend(y);
a = 0;
b = 100;
h = 0.05;
alpha1 = [1,1,0,0];
alpha2 = [pi,0,0,10^-10];
alpha3 = [2,2,0,0];
alpha4 = [2,2+10^-3,0,0];


[t1, w1] = rungekutta4(fp, a, b, alpha1, h);
[t2, w2] = rungekutta4(fp, a, b, alpha2, h);
[t3, w3] = rungekutta4(fp, a, b, alpha3, h);
[t4, w4] = rungekutta4(fp, a, b, alpha4, h);

%pendplot(w4(:,1), w4(:,2))
hold on
plot(t1, w1(:,2))
plot(t2, w2(:,2))
plot(t3, w3(:,2))
plot(t4, w4(:,2))
legend('Case 1', 'Case 2', 'Case 3', 'Case 4');

k = [1,2,3,4];
hs = 0.05./2.^(k-1);
h_exact = 0.001;
[t_exact, w_exact] = rungekutta4(fp, a, b, alpha1, h_exact);
theta2_exact = w_exact(end,2)

for i = 1:4
    [t_i, w_i] = rungekutta4(fp, a, b, alpha1, hs(i));
    theta2_comparison(i) = w_i(end,2);
    errors(i) = abs(theta2_comparison(i) - theta2_exact);
end

theta2_comparison
errors
hold off
loglog(hs, errors, "ko", linewidth=3)
xlabel("h")
ylabel("error")

% Estimate slope using first and last (h,error) points
slope = (log(errors(4))-log(errors(1)))/(log(hs(4))-log(hs(1)))
