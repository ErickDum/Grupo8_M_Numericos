%runge_kutta
%Este metodo ayuda a sacar ecuaciones diferenciales
%[y]=runge_kutta(f,x,y,xob,h,orden)
%                     [y]=punto de la respuesta a la eedd
%                     f=ecuacion diferencial
%                     x=condicion inicial x
%                     y=condicion inicial y
%                     xob=x que queremos saber
%                     h=paso
%                     orden=orden 2 y orden 3


function [y]=runge_kutta(f,x,y,xob,h,orden)
  if 2>orden>3
    error('Orden 2 o 3')
  endif
   iteraciones=abs((xob-x)/h)
   switch orden
  case 2
    a_2=1/2;
    a_1=1-a_2;
    q=1/(2*a_2);
    for i=1:iteraciones
      k_1=f(x,y);
      k_2=f(x+q*h,y+q*k_1*h);
      y=y+(a_1*k_1+a_2*k_2)*h;
      x=x+h;
    endfor
    
  case 3
    x=1;
    y=0;
    xob=1.2;
    h=0.1;
    iteraciones=abs((xob-x)/h);
    for i=1:iteraciones
      f=@(x,y) e^(x+y);

      
      k_1=f(x,y);
      k_2=f(x+(h/2),y+(h/2)*k_1);
      k_3=f(x+h,y-h*k_1+2*h*k_2);
      y=y+h/6*(k_1+4*k_2+k_3);
      x=x+h;
    endfor
    
endswitch
  
%