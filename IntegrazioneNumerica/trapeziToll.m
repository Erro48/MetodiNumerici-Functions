function [INt, Nt] = trapeziToll(a, b, fname, tol)
% TODO: INt deve essere uno scalare, non un vettore
    Nmax = 2048;    % Numero massimo di suddivisioni
    err = 1;
    
    % Calcolo della prima approssimazione dell'integrale con N=1
    Nt = 1;
    i = 2;
    p = 1;
    INt(1) = trapeziComp(fname, a, b, Nt);
    
    while Nt <= Nmax && err > tol
        % Approssimazione dell'integrale aumentando il numero di
        % suddivisioni
        Nt = 2*Nt;
        INt(i) = trapeziComp(fname, a, b, Nt);
        
        if abs(INt(i) - INt(i-1))
            Nt = Nt / 2;
            return;
        end
        
        err = abs((INt(i) - INt(i-1)) / 3);
    end
    
    if Nt > Nmax
        fprint('Raggiunto nmax di intervalli\n')
    end
    
end