
%Metodo de Gauss
%El metodo de gauss ayuda a sacar integrales
%[error R]=cuadratura_de_gauss(f,a,b,puntos)
%                 [f]=funcion la cual queremos hallar su area bajo la curva
%                  a=Desde que intervalo queremos hallar el area bajo la curva
%                  b=Hasta que intervalo queremos hallar el area 
%                  puntos=cuantos puntos queremos usar (2 puntos nos da x error, 3 puntos nos da menos error)

function[error R]=cuadratura_de_gauss(f,a,b,puntos)

if (a==b)|(a>b)
  error('El intervalo tiene que ser mayor a 0')
endif

pkg load symbolic;


syms t g(t) e(t)
x=((b+a)+(b-a)*t)/2;
dx=diff(x,t);
g(t)= f(x)*dx;

e(t)=diff(g(t),t,puntos*2);
p=linspace(-1,1,100);
error=max(abs(e(p)));

c_o=5/9;
c_1=8/9;
c_2=5/9;
t_o=-sqrt(15)/5;
t_1=0;
t_2=sqrt(15)/5;


switch puntos
  case 2
    J=g(-1/sqrt(3))+g(1/sqrt(3));
    R=double(J);
    error=error/135;
    
  case 3
    I=c_o*g(t_o)+c_1*g(t_1)+c_2*g(t_2);
    R=double(I);
    error=error/15750;
endswitch