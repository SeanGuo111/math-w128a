f = @(t,y) y.^2.*(1-y);
a = 0;
b = 2000;
alpha = 0.9;
N_higher = 790;
N_lower = 647;
[th, wh] = rk4(f,a,b,alpha,N_higher);
[tl, wl] = rk4(f,a,b,alpha,N_lower);
higher_N_2000 = wh(end)
lower_N_2000 = wl(end)
plot(th, wh, tl, wl, LineWidth=2)
legend("N = 790", "N = 647")

df = @(t,y) 2*y-3*y.^2;
maxiter = 20; 
tol = 1e-12;
N = 1
[t1, w1] = backeuler(f,df,a,b,alpha,N,maxiter,tol);
N = 5
[t2, w2] = backeuler(f,df,a,b,alpha,N,maxiter,tol);
N = 10
[t3, w3] = backeuler(f,df,a,b,alpha,N,maxiter,tol);

plot(t1, w1, t2, w2, t3, w3, LineWidth=1.5)
legend("N=1", "N=5", "N=10")