%% Uppgift1
r = 4;
A = pi * r^2;

%% Uppgift2
x = 0:0.1:pi*4;
f = sin(x) + 0.3 * sin(5 * x);
plot(x,f)

%% Uppgift3
s = 0;
for i=1:5
    s = s + i^2;
end

%% Uppgift4
x = linspace(-10, 10);
y = my_func(x);
plot(x,y)

fzero(@my_func,1)

function y=my_func(x)
    y = x.^2 - cos(x);
end

%% Uppgift5
% linspace(start, slut, n)
% n är 100 som standard