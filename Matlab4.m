%% Uppgift 1
clc
x = [0 0 2 0];
y = [0 2 0 0];
triangelOmkrets = polylen(x, y)

x = [0 0 2 2 0];
y = [0 2 2 0 0];
rektangelOmkrets = polylen(x, y)

% f�r att r�kna omkrets beh�ver startpunkten och slutpunkten vara den
% samma, dvs f�rsta och sista v�rderna i x �r samma och f�rsta och sista
% v�rdet i y �r samma.

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
% (misslyckat f�rs�k att r�kna ut hur m�nga iterationer f�r 5 korrekta decimaler)
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

% efter 136120 iterationer �r fem f�rsta decimalerna korrekt i minPi

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
    disp('M�ste vara fler punkter �n i en triangel!!!')
end