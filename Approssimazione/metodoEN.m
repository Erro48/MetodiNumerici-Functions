function [a, p, condG] = metodoEN(A, b)
    G = A' * A;     % simmetrica e definita positiva
    z = A' * b;
    condG = cond(G);
    
    [L, p] = chol(G, "lower");
    
    if p > 0
       disp('G non è definita positiva')
       a = G \ z;
       return;
    else
       b1 = Lsolve(L, z);
       a = Usolve(L', b1);
    end
end