function [output] = logistic_map(x0, r, length)
%LOGISTIC_MAP This function simulates the logistic map x_{n+1} = r * x_n *
%(1 - x_n)
%   r is the growth rate, x_0 the initial value, and length the number of
%   iterations
    output = zeros(1, length+1);
    output(1) = x0;
    for I = 1:length
        output(I+1) = r * output(I) * (1 - output(I));
    end

    figure;
    plot(0:length, output, '-x');
    grid on;

end