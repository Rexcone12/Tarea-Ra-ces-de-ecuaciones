clc; clear; close all;

% Definición de la función y su derivada
f = @(x) exp(-x) - x;
df = @(x) -exp(-x) - 1;

% Parámetros
x0 = 0; 
tol = 1e-6; % Tolerancia máxima
max_iter = 5; % Número de iteraciones

% Punto Fijo
disp('Método de Punto Fijo:');
x = x0;
iter = 0;
while iter < max_iter
    x_next = exp(-x);
    if abs(x_next - x) < tol
        break;
    end
    x = x_next;
    iter = iter + 1;
end
fprintf('Raíz encontrada en x = %.3f \n',x);

% Newton-Raphson
disp('Método de Newton-Raphson:');
x = x0;
iter = 0;
while iter < max_iter
    x_next = x - f(x) / df(x);
    if abs(x_next - x) < tol
        break;
    end
    x = x_next;
    iter = iter + 1;
end
fprintf('Raiz encontrada en x = %.3f \n',x );
