%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('M�todo de Newton Raphson modificado')
f = @(x) 2*x.^2 - 13*x + 15;
pi= 5;
err= 0.001;
%Graficamos la funci�n
ezplot(f)
grid on
%Calculamos 1er y 2a derivada de la funci�n
dx= @(x) 4*x - 13;
dx2=@(x) 4;
ea =100;
j =0;
while ea>err
 %Aproximamos la raiz con la f�rmula correspondiente
 xi=pi-(f(pi)*dx(pi))/((dx(pi)^2)-(f(pi)*dx2(pi)));
 %Calculamos el porcentaje de error
 ea=abs(((xi-pi)/xi)*100);
 pi=xi;
 j =j+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nResultado de la ra�z=%10.3f en %4d iteraciones\n',pi,j);
