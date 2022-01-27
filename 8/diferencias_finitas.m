%diferencias finitas

%Descripcion; este metodo sirve para hallar los puntos de la respuesta a una ecuacion diferencial 
%desde un intervalo a hasta un intervalo b 
%[y]=diferencias_finitas(x0,y0,xf,yf,h,f)
%                         [y]=matriz con los puntos f(x) de la solucion a la ecuacion diferencial
%                         [x0]=encontrar los puntos desde x=x0
%                         [y0]=resultado de la ecuacion diferencial evaluada en x0
%                         [xf]=hasta x=xf
%                         [yf]=resultado de la ecuacion diferencial evaluada en xf
%                         [h]=pasos
%                         [f]=ecuacion diferencial

function[y]=diferencias_finitas(x0,y0,xf,yf,h,f)
  if x0==xf | h==0
    error('x0 tiene que ser diferente de xf')
  endif

pkg load symbolic

syms x y d2_y d_y a b c xi

n=int8(((xf-x0)/h)-1);

d2_y=(c-2*b+a)/h^2;

d_y=(c-a)/(2*h);

x=xi;

y=b;

f=d2_y-2*d_y+5;

a=coeffs(f);
a=double(a);

x=linspace(x0,xf,n+2);
b=zeros(n,1);

A=eye(n)*(a(1,3));
for k=1:n-1
  A(k,k+1)=a(1,2);
  A(k+1,k)=a(1,4);
  b(k)=a(1,1)*-1;
end
b(1)=a(1,1)*-1-a(1,4)*y0;
b(n)=(a(1,1)+a(1,2)*yf)*-1;
[A b];
y=inv(A)*b;

%






