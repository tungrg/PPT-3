function[] = Bai03()
f = @(x) x^2 + x - 5;
delta = 10^(-3);
phi = @(x) sqrt(5-x);
x0 = 1.5;
k=1;
while 1
    fprintf("STT %d",k)
    xn = phi(x0)
    if abs(f(xn)) < delta
        break
    else
        k = k + 1;
    end
    x0 = xn;
    disp("**********")
end
disp(xn)