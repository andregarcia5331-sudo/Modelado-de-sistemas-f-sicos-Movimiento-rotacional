
m = 10;     
r = 0.05;   
k = 100;    


x0 = [0; 2]; 


tspan = [0 10];


sistema_ods = @(t, x) [x(2); -(2*k)/(3*m)*x(1)];


[t, x] = ode45(sistema_ods, tspan, x0);


figure;
subplot(2,1,1);
plot(t, x(:,1), 'b', 'LineWidth', 1.5);
grid on;
title('Posicion Angular \theta(t)');
xlabel('Tiempo (s)'); ylabel('\theta (rad)');

