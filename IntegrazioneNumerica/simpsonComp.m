function [I] = simpsonComp(fname, a, b, N)
    % Formula di trapezi composita su N sottointervalli definiti da nodi
    % equidistanziati
    
    % Definiamo il passo H
    H = (b - a) / (2*N);
    
    % Definizione dei nodi
    nodi = [a:H:b];
    
    % Valutazione della fname nei nodi
    f = fname(nodi);
    
    % Costruzione dell'integrale secondo la formula dei trapezi
    I = H/3 * (f(1) + 4*sum(f(2:2:2*N)) + 2*sum(f(3:2:2*N - 1)) + f(2*N + 1));
    
    
end