function[] = pptieptuyen(f,x0,delta)
    k = 1;
    hold on;
    df = diff(f,x)
    while 1
        fprintf("STT %d", k)
        xn = x0 - f(x0)/df(x0)
        if abs(f(xn) < delta
            break
        end
        k = k + 1;
        x0 = xn
    end
end
    