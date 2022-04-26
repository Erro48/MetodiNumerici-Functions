function[x, flag] = Lsolve(L, b)
    % Test dimensione
    [n, m] = size(L);
    flag = 0;
    if n ~= m
        disp('error: matrice non quadrata')
        x = [];
        flag = 1;
        return
    end
    
    % Test di singolarità
    if all(diag(L)) ~= 1
        disp('elemento diagonale nullo')
        x = [];
        flag = 1;
        return
    end
    
    % Inizializzazione del vettore soluzione
    x = zeros(n, 1);
    for i=1:n
        x(i) = (b(i) - L(i, 1:i-1) * x(1:i-1)) / L(i, i);
    end
end