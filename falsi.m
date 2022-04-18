function [x, xk, it] = falsi(fname, a, b, tolx)
    fa = fname(a);
    fb = fname(b);
    if sign(fa) * sign(fb) >= 0
        error('Intervallo non corretto')
    else
        maxit = ceil(log2((b - a) / tolx) - 1);
    end
    it = 0;

    while it <= maxit && abs(b - a) >= tolx
        it = it + 1;
        xk(it) =  a - (fa * ((b - a) / (fb - fa)));
        fxk = fname(xk(it));

        if fxk == 0
            break;
        elseif sign(fxk) * sign(fa) > 0
            a = xk(it);
            fa = fxk;
        elseif sign(fxk) * sign(fb) > 0
            b = xk(it);
            fb = fxk;
        end
    end
    x = xk(it);
end