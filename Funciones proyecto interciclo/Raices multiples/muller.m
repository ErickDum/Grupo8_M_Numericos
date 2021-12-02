function [x3] = muller(f,x0,x1,x2,tol)
%  Parametros
%  f : funcion original ya definida
%  x0 : Primer punto en para empezar a trazar la funcion de nuestra parabola
%  x1 : Punto intermedio de la funcion de nuestra parabola
%  x2 : Punto final para obtener la funcion de nuestra parabola
%  tol : tolerancia o nivel de precision que buscamos obtener
error = 1e3;
x3 = 0;
while error > tol
    c = f(x2);
    b = ((x0-x2)^2*(f(x1)-f(x2))-(x1-x2)^2*(f(x0)-f(x2)))/...
        ((x0-x2)*(x1-x2)*(x0-x1));
    a = ((x1-x2)*(f(x0)-f(x2))-(x0-x2)*(f(x1)-f(x2)))/...
        ((x0-x2)*(x1-x2)*(x0-x1));
    x3 = x2-(2*c)/(b+sign(b)*sqrt(b^2-4*a*c));
    error = abs(x3-x2);
    x0 = x1; x1 = x2; x2 = x3;
end