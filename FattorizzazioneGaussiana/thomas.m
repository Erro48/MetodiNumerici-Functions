function [x] = thomas(a, b, c, d)
    n = length(a);
    y = zeros(1, n);
    x = zeros(1, n);
    
    for k=2:n
        b(k-1) = b(k-1) / a(k-1);
        a(k) = a(k) - b(k-1) * c(k-1);
    end
    
    y(1) = d(1);
    for k=2:n
        y(k) = d(k) - b(k-1) * y(k-1);
    end
    
    x(n) = y(n) / a(n);
    for k=n-1:-1:1
        x(k) = (y(k) - c(k) * x(k+1))/a(k);
    end
    
    
end