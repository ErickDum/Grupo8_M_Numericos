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

function [r,iteraciones] = regula_falsi(LL, RL, f, tol,max)
if f(LL) * f(RL) < 0 
    PC = RL-((RL-LL)*f(RL)/(f(RL)-f(LL))); 
    contador = 0; 
    fprintf('Iteraciones \t xn \t\t Error \n')
    PC = 0;
    while abs(f(PC)) > tol && contador < max
        PP = PC;
        PC = ((LL*f(RL))-(RL*f(LL)))/(f(RL)-f(LL));
        if f(PC) == 0 
            r = PC;
        else
            if f(LL) * f(PC) < 0
                RL = PC;
            else
                LL = PC;
            end
        end
        contador = contador + 1;
        ea = abs((PC-PP)/PC)*10000;
        ea = round(ea)/10000;
        fprintf('%.0f\t\t', contador);
        fprintf('%.5f\t\t', PC);
        fprintf('%.5f\t\t', ea);
        fprintf('\n');
        if (ea < tol)
          break;
        endif
    end
    iteraciones= contador;
    r = PC;
else
    error ("No existe la raiz en el intervalo o en las iteraciones dadas . \n")
end   
end