function [t,w] = backeuler(f, dfdy, a, b, alpha, N, maxiter, tol)
h = (b-a)/N;
t = a:h:b;
w(1) = alpha;

for i = 1:N
    wi = w(i);
    ti1 = t(i+1);

    pn = wi;
    iterations = 0;
    i
    fprintf(' iter      p         |pn+1-pn|   \n');
    fprintf('---------------------------------\n');
    while 1
        iterations = iterations + 1;
        num = pn - wi - h*f(ti1, pn);
        denom = 1 - h*dfdy(ti1, pn);
        pn1 = pn - num/denom;
        
        difference = abs(pn1 - pn);
        if difference < tol
            pn = pn1;
            fprintf('%2d  %12.8f  %12.8f\n', iterations, pn, difference);
            break
        elseif iterations == maxiter
            error("Maximum iterations reached without convergence")
        end
        
        pn = pn1;
        fprintf('%2d  %12.8f  %12.8f\n', iterations, pn, difference);
    end
    w(i+1) = pn;
end