% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 02/12/2021
%
% Descripcion: 
% Implementacion de las reglas de Simpson para integrecion numerica.


clear, clc

% Problema 1
% Un condensador tiene inicialmente un voltaje a través de él de 10V. 
% Si la corriente que pasa a través de un condensador es 5cos(50t) y 
% su capacitancia es 2F, entonces ¿cuál es el voltaje a través del condensador
% a 1 segundo de haber iniciado su descarga?

disp('Problema 1: Voltaje en un capacitor')

f = @(t) 5*cos(50*t);

try
tic;
[i_1_3, error_1_3] = simpson_1_3(f, 0, 1, 3);
t_1_3 = toc;
V_1_3 = 10 + ((1/2)*i_1_3);

tic;
[i_3_8, error_3_8] = simpson_3_8(f, 0, 1);
t_3_8 = toc;
V_3_8 = 10 + ((1/2)*i_3_8);

tic;
h = 1/5;
ti = [];
i = 0;
while (i <= 1)
  ti = [ti [i]];
  i = i+h;
endwhile

[i_com, e_com] = simpson_1_3(f, ti(1), ti(3), 2);

for j=4:numel(ti)
  [I, e] = simpson_3_8(f, ti(j-1), ti(j));
  i_com = i_com + I;
  e_com = e_com + e;
endfor
t_com = toc;
V_com = 10 + ((1/5)*i_com);

catch err
fprintf('Error: %s\n',err.message);
end

fprintf('Método\t\t T.ejecucion\t Voltaje\t error\n')
fprintf('Simpson 1/3\t %.4f\t\t %.4f\t\t %.4f\t\t', t_1_3, V_1_3, error_1_3);
fprintf('\n');

fprintf('Simpson 3/8\t %.4f\t\t %.4f\t\t %.4f\t\t', t_3_8, V_3_8, error_3_8);
fprintf('\n');

fprintf('Combinacion\t %.4f\t\t %.4f\t\t %.4f\t\t', t_com, V_com, e_com*-1);
fprintf('\n\n');


% Problema 2
% En un inductor inicialmente atraviesa un corriente de 10A. Si el voltaje
% esta dado por sen(3t) y su inductancia es 5H, entonces ¿cuál es la 
% a través del condensador a 1 segundo de haber iniciado su descarga?

disp('Problema 2: Corriente en un inductor')

g = @(t) cos(3*t);

try
tic;
[v_1_3, error_1_3] = simpson_1_3(g, 0, 1, 3);
t_1_3 = toc;
i_1_3 = 10 + ((1/5)*v_1_3);

tic;
[v_3_8, error_3_8] = simpson_3_8(g, 0, 1);
t_3_8 = toc;
i_3_8 = 10 + ((1/5)*v_3_8);

tic;
h = 1/5;
ti = [];
i = 0;
while (i <= 1)
  ti = [ti [i]];
  i = i+h;
endwhile

[v_com, e_com] = simpson_1_3(g, ti(1), ti(3), 2);

for j=4:numel(ti)
  [V, e] = simpson_3_8(g, ti(j-1), ti(j));
  v_com = v_com + V;
  e_com = e_com + e;
endfor
t_com = toc;
i_com = 10 + ((1/5)*v_com);

catch err
fprintf('Error: %s\n',err.message);
end

fprintf('Método\t\t T.ejecucion\t Corriente\t error\n')
fprintf('Simpson 1/3\t %.4f\t\t %.4f\t %.4f\t\t', t_1_3, i_1_3, error_1_3*-1);
fprintf('\n');

fprintf('Simpson 3/8\t %.4f\t\t %.4f\t %.4f\t\t', t_3_8, i_3_8, error_3_8*-1);
fprintf('\n');

fprintf('Combinacion\t %.4f\t\t %.4f\t %.4f\t\t', t_com, i_com, e_com*-1);
fprintf('\n\n');

