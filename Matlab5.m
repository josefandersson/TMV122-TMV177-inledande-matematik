%% Uppgift 1
clc
f = @(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x = linspace(-2, 7);
plot(x, f(x));
axis([-2 7 -1 1]), grid on

%% Uppgift 2
clc
a = -1;
b = 0;
ab = f(a)*f(b)
m = (a+b)/2;

if (f(a)*f(m) < 0)
    b = m;
else
    a = m;
end

%% Uppgift 4
clc
format long
f = @(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x0 = min_bisect(f, [-1 0], 1e-5)
x1 = min_bisect(f, [2 3], 1e-5)

%% Uppgift 5
clc
x = linspace(0, 13);
plot(x, kastbana(x))
axis([0 13 -1 5]), grid on
hit = min_bisect(@kastbana, [11 12], 1e-4)