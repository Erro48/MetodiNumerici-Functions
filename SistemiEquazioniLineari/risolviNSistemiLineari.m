function X = risolviNSistemiLineari(A, B)
    [L, U, P, flag] = LUparziale(A);
    [m, n] = size(A);
    
    if flag == 0
       for i = 1:n
          Y(:, i) = Lsolve(L, P * B(:, i));
          X(:, i) = Usolve(U, Y(:, i));
       end
    end
    
end