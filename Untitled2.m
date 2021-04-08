clear all; clc
format long
f = @(x) x + sin(x) - 2;
delta = 10^(-3);
a = 1;
b = 1.4;
k = 1;
while 1
    sprintf("STT %d",k)
    c = (a + b)/2
    if abs(f(c)) < delta
        break;
    end
    if f(a)*f(c)>0
        a = c
    else
        b = c
    end
    k = k + 1
    disp("************")
end
sprintf("%d", c)
        