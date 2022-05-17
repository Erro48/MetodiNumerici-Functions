function [p] = pLagrange(xnodi, j)
    if j == 1
        xzeri = xnodi(2:end);
    else
        xzeri = [xnodi(1:j-1), xnodi(j+1:end)];
    end
    
    p = poly(xzeri);
    p = p / polyval(p, xnodi(j));
end