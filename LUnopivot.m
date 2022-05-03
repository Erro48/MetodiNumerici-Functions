function [L, U, flag] = LUnopivot(A)
    % flag = 0: sono soddisfatte le ipotesi di applicabilità del metodo
    % test sulla dimensione
    [n, m] = size(A);
    flag = 0;
    
    if n ~= m
       disp('Matrice non quadrata')
       L = [];
       U = [];
       flag = 1;
       return;
    end
    
    U = A; % copio A in U (A viene modificata)
    
    for k = 1:n-1
        if U(k,k) == 0
            disp('Elemento diagonale nullo')
            L = [];
            U = [];
            flag = 1;
        end
        
        for i = k+1:n
           U(i,k) = U(i,k) / U(k,k); % salvo il moltiplicatore m
           % modifico la riga i-esima
           for j = k+1:n
              U(i,j) = U(i,j) - U(i,k) * U(k,j); 
           end
        end
    end
    
    % tril restituisce una matrice triangolare inferiore senza la diagonale
    % principale (parametro -1)
    % triu ritorna una matrice triangolare superiore
    L = tril(U, -1) + eye(n);
    U = triu(U);
    
end