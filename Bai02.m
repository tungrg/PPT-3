function[] = bai02()
f = @(x) x + sin(x) - 2;
delta = 10^(-3);
phi = @(x) 2 - sin(x);
x0 = 1.05;
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
    