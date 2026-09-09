% Parametros del problema
m = 10;     % kg
r = 0.05;   % m
k = 100;    % N/m

% Condiciones iniciales [theta(0); dtheta(0)]
x0 = [0; 2]; 

% Tiempo de simulacion
tspan = [0 10];

% Sistema en espacio de estados
sistema_ods = @(t, x) [x(2); -(2*k)/(3*m)*x(1)];

% Simulacion con ode45
[t, x] = ode45(sistema_ods, tspan, x0);

% Graficas
figure;
subplot(2,1,1);
plot(t, x(:,1), 'b', 'LineWidth', 1.5);
grid on;
title('Posicion Angular \theta(t)');
xlabel('Tiempo (s)'); ylabel('\theta (rad)');

