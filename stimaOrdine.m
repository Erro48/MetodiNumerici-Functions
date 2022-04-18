function p = stimaordine(xf)
    %xf: vettore lungo 4 con le ultime 4 iterate
    ek = abs(xf(1) - xf(2));
    ekp1 = abs(xf(2) - xf(3));
    ekp2 = abs(xf(3) - xf(4));

    p = log(ekp2 / ekp1) / log(ekp1 / ek);
end