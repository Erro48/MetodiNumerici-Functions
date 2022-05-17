function [yv, a] = interpNewton(x, y, xv)
    % Costruzione dei coefficienti a del polinomio interpolatore di Newton
    a = diffDivise(x, y);
    
    % Valutare il polinomio interplante di Newton nei punti del vettore xv
    % con lo schema di Horner
    yv = pvalHornerNewton(a, x, xv);
end