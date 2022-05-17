function [pval] = pvalHornerNewton(a, x, xv)
% Valutazione del polinomio di Newton con coefficienti a (ottuenuti
% tramite le differenze divise) in un vettore di punti xv
   n = length(a);
   nval = length(xv);
   pval = zeros(nval, 1);
   
   for i = 1:nval
       pval(i) = a(n);
       for k = n-1:-1:1
           pval(i) = pval(i) * (xv(i) - x(k)) + a(k);
       end
   end
end