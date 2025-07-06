f = @(x) sin(x) - exp(-x);
fp = @(x) cos(x) + exp(-x); 
f = @(x) sin(x.^2)./(10+x.^2) - 0.02*exp(-x/10);
fp = @(x) ((2*x*cos(x.^2))*(10+x.^2)-(2*x*sin(x.^2)))./((10+x.^2).^2) + 0.002*exp(-x/10);
% Commented lines 3 and 4 until after generating plot 1

zeros = findmanyzeros(f, 0, 10, 50, 10^-10);
ext = findmanyzeros(fp, 0, 10, 50, 10^-10);
x = 0:0.001:10;
hold on
grid on
plot(x, f(x), "b", [0,10], [0,0], "r")
plot(zeros, f(zeros), "ok", MarkerSize=10, LineWidth=1)
plot(ext, f(ext), "m^", MarkerSize=10, LineWidth=1)
legend("f_2(x)", "y=0", "Zeros", "Extrema", Location="southeast", FontSize=24) 
%changed f_1 to f_2 for second plot
