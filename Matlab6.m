%% Uppgift 1
clc, clf

f = @(x)x.^3-cos(3*x);
Df = @(x)3*x^2+3*sin(3*x);

x = linspace(-2, 1);
plot(x, f(x)), axis([-2 1 -1 1]), grid on, hold on

[xi, yi] = ginput;
disp(xi)
for i = 1 : size(yi)
    x = min_newton(f, Df, xi(i), 1e-8)
    plot(x, 0,'r*')
end


%% Uppgift 3a
clc, clf

f = @(x)0.5*(x-2).^2-2*cos(2*x);
Df = @(x)x+4*sin(2*x)-2;
tol = 1e-8;

x = linspace(-5, 5);
plot(x, f(x)), axis([-5 5 -1 1]), grid on

% approximation:
% x1=0 x2=0.5 x3=2.5 x4=3.5
x1 = min_newton(f, Df, 0  , tol)
x2 = min_newton(f, Df, 0.5, tol)
x3 = min_newton(f, Df, 2.5, tol)
x4 = min_newton(f, Df, 3.5, tol)


%% Uppgift 3b
clc, clf

f = @(x)x.^3-cos(4*x);
Df = @(x)3*x.^2+4*sin(4*x);
tol = 1e-8;

x = linspace(-5, 5);
plot(x, f(x)), axis([-5 5 -1 1]), grid on

% approximation:
% x1=-1 x2=-0.5 x3=0.5
x1 = min_newton(f, Df, -1  , tol)
x2 = min_newton(f, Df, -0.5, tol)
x3 = min_newton(f, Df,  0.5, tol)


%% Uppgift 4
clc, clf

f = @(x)(((3+sin(2.*x))./(1+exp(0.03.*x.^2)))-1.2);
x = linspace(-5, 5);
plot(x, f(x)), axis([-5 5 -1 1]), grid on

x1 = fzero(f, -3  )
x2 = fzero(f, -1  )
x3 = fzero(f,  0  )
x4 = fzero(f,  2  )
x5 = fzero(f,  3  )
x6 = fzero(f,  4.5)