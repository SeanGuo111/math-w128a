function x = my_sqrt(a, epsilon)
% Iterate x_{n+1} = (x_n + a / x_n) / 2
% starting at x_0 = 1
% until the update |x_{n+1} - x_n| < epsilon
    x = 1;
    while 1
        xnew = (x + a / x) / 2;
        delta_x = abs(xnew-x);
        x = xnew;
        
        if delta_x < epsilon
            break
        end
    end
end