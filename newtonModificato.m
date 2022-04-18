function [x1, xk, it] = newtonModificato(fname, fpname, m, x0, tolx, tolf, nmax)
% m = molteplicità della radice
    fx0 = fname(x0);
    dfx0 = fpname(x0);

    if abs(dfx0) > eps
        d = fx0/dfx0;
        x1 = x0 - m * d;
        fx1 = fname(x1);
        it = 1;
        xk(it) = x1;
    else
        x1 = [];
        xk = [];
        it = [];
        error('Derivata prima nulla in x0')
    end

    while it <= nmax && abs(fx1) >= tolf && abs(d) >= tolx*abs(x1)
        x0 = x1;
        fx0 = fname(x0);
        dfx0 = fpname(x0);

        if abs(dfx0) > eps
            d = fx0 / dfx0;
            x1 = x0 - m * d;
            fx1 = fname(x1);
            it = it + 1;
            xk(it) = x1;
        else
            error('Derivata nulla')
        end
    end
end