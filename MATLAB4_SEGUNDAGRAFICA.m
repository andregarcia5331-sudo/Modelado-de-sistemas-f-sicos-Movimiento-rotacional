% Parametros del sistema
m = 10;      % Masa en kg
r = 0.05;    % Radio en m
k = 100;     % Constante del resorte en N/m

% Condiciones iniciales: x0 = [theta(0); dtheta(0)]
x0 = [0; 2];

% Tiempo de simulacion
tspan = [0 10]; 

% Definicion de las ecuaciones en espacio de estados: x1 = theta, x2 = dtheta
% dx1/dt = x2
% dx2/dt = -(2*k)/(3*m) * x1
sistema_ods = @(t, x) [x(2); -(2*k)/(3*m)*x(1)];

% Integracion numerica con ode45
[t, x] = ode45(sistema_ods, tspan, x0);

% Graficacion de los resultados

subplot(2,1,2);
plot(t, x(:,2), 'r-', 'LineWidth', 1.5);
grid on;
title('Velocidad angular \dot{\theta}(t)');
xlabel('Tiempo (s)');
ylabel('\dot{\theta} (rad/s)');