%% Uppg 1
clc
x = (-pi/2)+0.01:0.01:(pi/2)-0.01;
y = tan(x);
plot(x,y), grid on;

% Tangens �r odefinerad p� pi/2
% N�ra pi/2 �r v�ldigt h�gt
% Matlab klarar h�ga tal, men inte o�ndligt h�ga tal

%% Uppg 2
clc
x = linspace(0, 8, 500);
y = x - x .* cos(7 * x);
plot(x, y), grid on;


%% Uppg 3
clc
x = linspace(0, 14);
plot([0 14], [0 0], 'green');
hold on

plot(x, kastbana(x, 15)), text(6.4, 1.6, '15^o'); % bl�
plot(x, kastbana(x, 30)), text(6.4, 3.2, '30^o'); % r�d
plot(x, kastbana(x, 45)), text(6.4, 4.6, '45^o'); % orange
hold off

title('Kastbana med v_0=10 m/s och olika \theta');
xlabel('x'), ylabel('y(x)');
axis equal, axis([0 14 -2 6]);

% Varf�r delar vi upp funktionsuttrycket f�r y(x) i flera delar?
% L�ttare att h�lla reda p� det man skriver/blir mindre kladdigt

%% Uppg 4
clc
t = linspace(0, 2*pi);
x = cos(t) + cos(3*t);
y = sin(2*t);
subplot(1, 2, 1);
plot(x, y);
title('No1');
axis equal
hold on

x = cos(t) + cos(4*t);
y = sin(2*t);
subplot(1, 2, 2);
plot(x, y);
title('No2');
axis equal
hold off

%% Uppg 5
clc
subplot(1, 1, 1);
t = linspace(0, 2*pi);
x = cos(t);
y = sin(t);
plot(x, y);
fill(x, y, 'g');
axis equal
hold on


x = [-0.5 0.5 0.5 -0.5 -0.5];
y = [0.5 0.5 -0.5 -0.5 0.5];
plot(x, y);
fill(x, y, 'y');
hold off
