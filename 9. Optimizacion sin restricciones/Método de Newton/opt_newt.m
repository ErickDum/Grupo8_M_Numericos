function a=opt_newt(fun,x0,tol)
syms x
% Variables de entrada:
% fun: Funcion a la cual se aplica el metodo
% x0: Valor inicial para evaluar la funcion
% tol: tolerancia
% Variables de salida:
% iteraciones: Numero de iteraciones empleados
% a : punto en el que se encuentra una pendiente igual a cero
  d1fun = diff(sym(fun));
  d2fun = diff(diff(sym(fun)));
  f = subs(fun,x0);
  d1f= subs(d1fun,x0);
  d2f= subs(d2fun,x0);
  punto_minimo = 2;
  f2 = subs(fun,x0+punto_minimo);
  d1f2= subs(d1fun,x0+punto_minimo);
  d2f2= subs(d2fun,x0+punto_minimo);
  if (tol<0)
    error('La tolerancia debe ser mayor a cero')
  endif
  val1  = f - d1f/d2f ;
  val2 =  f2 - d1f2/d2f2 ;
  val1  = f - d1f/d2f 
  val2 =  f2 - d1f2/d2f2 
  while abs(val2) - abs(val1) > tol
    val1  = val2 ;
    punto_minimo = punto_minimo +1;
    f2 = subs(fun,x0+punto_minimo);
    d1f2= subs(d1fun,x0+punto_minimo);
    d2f2= subs(d2fun,x0+punto_minimo);
    val2= f2 - d1f2/d2f2 ;
    
  endwhile
  %iteraciones
  punto_minimo
endfunction