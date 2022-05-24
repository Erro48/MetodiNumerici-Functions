function [I] = trapeziComp(fname, a, b, N)
    % Formula di trapezi composita su N sottointervalli definiti da nodi
    % equidistanziati
    
    % Definiamo il passo H
    H = (b - a) / N;
    
    % Definizione dei nodi
    nodi = linspace(a, b, N+1)';
%     nodi = zeros(N+1, 1);
%     for i = 1:N+1
%         nodi(i) = a + i*H;
%     end
    
    % Valutazione della fname nei nodi
    f = fname(nodi);
%     Ii = zeros(N, 1);
%     for i = 1:N
%         Ii(i) = (H/2) * (fname(nodi(i)) + fname(nodi(i+1)));
%     end
    
    % Costruzione dell'integrale secondo la formula dei trapezi
    I = H/2 * (f(1) + 2*sum(f(2:N)) + f(N+1));
%     I = Ii(1);
%     for i = 2:N
%         I = I + Ii(i);
%     end
    
    
end