%Metodo de regula falsi
% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
% Fecha: 21/10/21
% Descripción: Implementacion del metodo regula falsi para hallar 
% las raices en ecuaciones no lineales
% Parámetros:
% r: Raiz encontrada por el metodo
% iteraciones: numero de iteraciones usadas
% LL: Limite izquierdo del intervalo
% RL: Limite derecho del intervalo
% PC: Cuerda entre los 2 limites
% f: Funcion que se evaluara
% tol: Error de tolerancia 
% max: Iterasiones maximas

function [datos]=regula_falsi(f, x1, x2, n_i = 100, tol = 0.001)
   datos = zeros(2,1);
   i = 0; 
   while (i < n_i)
     xn = (x1*f(x2) - x2*f(x1))/(f(x2) - f(x1));
     error = abs(f(xn));
     datos = [datos [xn; error]];
     if (error < tol)
       i = n_i -1;
     endif
     if (f(x1)*f(xn)<0)
       x2 = xn;
     elseif (f(x2)*f(xn)<0)
       x1 = xn;
     endif
     i ++;
   endwhile
 endfunction
 