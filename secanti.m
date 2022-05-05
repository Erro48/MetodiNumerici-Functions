function [x1, xk, it] = secanti(fname, x0, x1, tolx, tolf, nmax)
    fx0 = fname(x0);
    fx1 = fname(x1);
    d = fx0*(x0 - x1)/(fx0 - fx1);
    it = 2;
    xk(it) = x1;

    while it <= nmax && abs(fx1) >= tolf && abs(d) >= tolx*abs(x1)
        x0 = x1;
        fx0 = fname(x0);

        d = fx0*(x0 - xk(it - 1))/(fx0 - fname(xk(it - 1)));
        x1 = x0 - d;
        fx1 = fname(x1);
        it = it + 1;
        xk(it) = x1;
    end
end