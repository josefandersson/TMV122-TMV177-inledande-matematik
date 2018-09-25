%% Uppgift 1
clc
x = [0 0 2 0];
y = [0 2 0 0];
triangelOmkrets = polylen(x, y)

x = [0 0 2 2 0];
y = [0 2 2 0 0];
rektangelOmkrets = polylen(x, y)

% för att räkna omkrets behöver startpunkten och slutpunkten vara den
% samma, dvs första och sista värderna i x är samma och första och sista
% värdet i y är samma.

%% Uppgift 2a
clc
format long

s = 0; d = 1; n = 0;
while d > 1e-5
    nys = s + (((-1)^n) / (2*n + 1));
    d = abs(nys - s);
    s = nys;
    n = n + 1;
end
minPi = s*4

%% Uppgift 2b
% (misslyckat försök att räkna ut hur många iterationer för 5 korrekta decimaler)
clc
format long

s = 0; d = 1; n = 0; minPi = 0;
while d > 1e-5
    nys = s + (((-1)^n) / (2*n + 1));
    nyMinPi = nys*4;
    d = abs(nyMinPi - minPi);
    minPi = nyMinPi;
    n = n + 1;
    s = nys;
end
minPi

% n=200001

%% Uppgift 2b
clc
format long

s = 0;
for n=0 : 136120
    s = s + (((-1)^n) / (2*n + 1));
end
minPi = s*4

% efter 136120 iterationer är fem första decimalerna korrekt i minPi

%% Uppgift 3
clc
clf
[x,y] = ginput;
s = size(x);
if s(1) > 3
    x = [x; x(1)];
    y = [y; y(1)];
    fill(x,y,'g');
else
    disp('Måste vara fler punkter än i en triangel!!!')
end