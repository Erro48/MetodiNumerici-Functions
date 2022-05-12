function [pol] = interpLagrange(x, y, xv)
    n = length(x);
    nval = length(xv);
    pol = zeros(1, nval);
    
    for j=1:n
        % Calcolo il polinomio j-esimo di Lagrange
        c = pLagrange(x, j);
        Lj = polyval(c, xv);
        pol = pol + y(j) * Lj;
    end
end