function [pval] = pvalHorner(a, xv)
   n = length(a);
   nval = length(xv);
   pval = zeros(nval, 1);
   
   for i = 1:nval
       pval(i) = a(n);
       for k = n-1:-1:1
           pval(i) = pval(i) * xv(i) + a(k);
       end
   end
end