
clc
clear all
disp("Problema 1\n")


#Problema 1
#En un circuito se optienen las siguientes ecuaciones
#la matriz de Resistencias es R=[8 20 15;20 80 50;15 50 60]
#la matriz de Intensidades es V=[ 100 250 100]
#Encontrar la matriz de intensidades

A=[8 20 15;20 80 50;15 50 60];
b=[100;250;100];

try 
R=Choleski(A,b');
for i=1:3
  fprintf('I(%2.0f) %5.5f\n',i,R(i))
endfor
catch err
  fprintf("Error: %s\n",e.message)  
end
disp("\n\n")




#Problema 
#Problema 1
#En un circuito se optienen las siguientes ecuaciones
#la matriz de Resistencias es R=[1 -1 1;-1 5 -5;1 -5 6]
#la matriz de Intensidades es V=[ 2 -6 9]
#Encontrar la matriz de intensidades

disp("Problema\n")

A=[1 -1 1;-1 5 -5;1 -5 6];

b=[2; -6; 9;];

try 
R=Choleski(A,b');
for i=1:3
  fprintf('I(%2.0f) %5.5f\n',i,R(i))
endfor
catch err
  fprintf("Error: %s\n",e.message)  
end
disp("\n\n")