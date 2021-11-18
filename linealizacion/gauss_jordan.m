% Autores: Mateo Chimbo
%          Erick Dumas          
%          Karla Esterilla
% Fecha:   28 de octubre de 2021
% Descripcion: Esta funcion implemeta el algoritmo de gauss_jordan para resolver sistemas de ecuaciones 
%              con varias incognitas
%gauss_jordan    Solucion de sistemas de ecuaciones.
%   gauss_jordan(A) llenar
%       A=Matriz
%       resultados=Solucion de la matriz
%       



function[resultados]=gauss_jordan(A)

for i=1:rows(A)
  pivote=A(i,i);
  if pivote==0
    msgbox("la matriz no es independiente");
    resultados="no tiene solucion unica";
  endif
  A(i,:)=A(i,:)/pivote; 
  A([1 i],:)=A([i 1],:); 
  
  for l=2:rows(A)
    l;
    A(l,:)=A(l,:)+(A(1,:)*-A(l,i));
    
  endfor
  
  A([i 1],:)=A([1 i],:);
 
endfor
resultados=A(:,columns(A));

