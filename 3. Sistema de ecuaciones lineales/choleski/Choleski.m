% Autores: Mateo Chimbo
%          Erick Dumas          
%          Karla Esterilla
% Fecha:   28 de octubre de 2021

% Descripcion: Esta funcion implemeta el algoritmo de Choleski para resolver sistemas de ecuaciones 
%              con varias incognitas
%Choleski    Metodo para Solucion de sistemas de ecuaciones.
%       Choleski(A) llenar
%       A=Matriz
%       X=Solucion de la matriz




function X=Choleski(a,b)
n=size(a,1);

G=zeros(n);
for i=1:n
    G(i,i)=sqrt(a(i,i)-dot(G(1:i-1,i),G(1:i-1,i)));
    for j=i+1:n
      G(i,j)=(a(i,j)-dot(G(1:i-1,i),G(1:i-1,j)))/G(i,i);
    end
end
C=[G' b'];
%%%



n=length(C)-1;
m=n+1;
Y(1)=C(1,m)/C(1,1);
for i=2:n
  suma=C(i,m);
  for j=1:i-1
    suma=suma-C(i,j)*Y(j);
  endfor
  Y(i)=suma/C(i,i);
endfor

%%%
D=[G Y'];



n=length(D)-1;
m=n+1;
X(n)=D(n,m)/D(n,n);
for i=n-1:-1:1
  
  suma=D(i,m);
  for j=i+1:n 
    suma=suma-D(i,j)*X(j);
   endfor
    X(i)=suma/D(i,i);
endfor

%*****************************

