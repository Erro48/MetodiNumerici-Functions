function[x, flag] = Usolve(U, b)
    % Test dimensione
    [n, m] = size(U);
    flag = 0;
    if n ~= m
        disp('error: matrice non quadrata')
        x = [];
        flag = 1;
        return
    end
    
    % Test di singolarità
    if all(diag(U)) ~= 1
        disp('elemento diagonale nullo')
        x = [];
        flag = 1;
        return
    end
    
    % Inizializzazione del vettore soluzione
    x = zeros(n, 1);
    for i=n:-1:1
        x(i) = (b(i) - U(i, i+1:n) * x(i+1:n)) / U(i, i);
    end
end