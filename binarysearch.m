function [output,runs] = binarysearch(lower,upper,fn,tol)
% BINARYSEARCH This function performs a binary search between suitable upper and lower
% bounds to find a root, for the given expression f(x).
    a = lower;
    b = upper;
    i = 0;
    while abs(a - b) > tol * abs(a + b)/2
        c = (a + b) / 2;
        if fn(c)*fn(b) > 0
            b = c;
            i = i + 1;
        else
            a = c;
            i = i + 1;
        end
    end
    output = (a+b)/2;
    runs = i;
end