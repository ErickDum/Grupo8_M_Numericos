% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 5/11/2021
%
% Descripcion: 
% Implementacion de una funcion para obtener una matriz inversa sin la 
% utilizacion de funciones predeterminadas de matlab u octave
try
A = [1, 2; 3 , 4];
inversa(A)
catch err
fprintf('Error: %s\n',err.message)
end

try
A = [6, 9, 4; 2 , 64 , 5; 5 , 2, 3];
inversa(A)
catch err
fprintf('Error: %s\n',err.message)
end