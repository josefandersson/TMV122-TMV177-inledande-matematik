%% Uppgift1
A = [1 4 5 10; 2 5 8 11; 3 6 9 12];
b = [1; 3; 5];
c = [0 2 4 6 8];
A(2,3)
b(2)
c(3)
A(2,3) = 15;
A

%% Uppgift2
clc
A = [1 5 9; 2 0 5; 3 7 11];
B = [29; 26; 39];
E = [A B];
R = rref(E)

A = [1 1 3 4; -2 2 2 0; 1 1 2 3; 1 -1 -2 -1];
B = [2; -4; 1; 1];
E = [A B];
R1 = rref(E)

%% Uppgift3 a
clc
A = [11 4 3 7; 2 6 8 5; 9 12 1 10];
b = [3; 1; 5];
c = [4 2 8 0 6];
size(b) % ger höjd:bredd, vektorn är 1 element i bredd, alltså en kolonnvektor
size(c) % ger höjd:bredd, vektorn är 1 element i höjd, alltså en radvektor

%% Uppgift3 b
clc
[row,y]=min(A);
[val,x]=min(row);
val
y = y(x)
x

%% Uppgift3 c
clc
[row,y]=max(A);
[val,x]=max(row);
val
y = y(x)
x

%% Uppgift4
clc
s = sum((1:5).^2)