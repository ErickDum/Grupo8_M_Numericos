
clc
clear all




#Problema 
# Se requiere encontrar los voltajes de cada nodo que se encuentra a continuacion: fig 1
#Usamos las leyes de kirchoff y concluimos en un sistema de ecuaciones 3x3 dado por
# -1/1k V1 + 7/3k v2  -1/500 v3 =0.002
# 1/6k v1 -1/1.2k v2  -1/2k  v3 =0
#0v1 -1/2k v2 + 3/2k v3 =0.002
disp("Problema de Voltaje en los nodos\n")

A=[-1/1000 7/3000 -1/500 0.002;1/6000 -1/1200 1/2000 0;0 -1/2000 3/2000 0.002];


try

V=gauss_jordan(A);
A
for i=1:3
  fprintf('V(%2.0f) %5.5f\n',i,V(i))
endfor
catch err
  fprintf("Error: %s\n",e.message)  
end

#Problema 
# Se requiere encontrar los voltajes de cada nodo que se encuentra a continuacion: fig 1
#Usamos las leyes de kirchoff y concluimos en un sistema de ecuaciones 3x3 dado por
# -1/2k V1 + 7/6k V2 -1/1k V3 = 2 mA
#1/6k V1 -1/1200 V2  + 1/2K  V3 =0
#0 V1 -1/2k V2  + 3/2k V3 =2 mA

disp("\n\n")


disp("Problema de Voltaje en los nodos\n")
imagen=imread('ejemplogauss.jpg');
imshow(imagen)


A=[-1/2000 7/6000 -1/1000 0.002;1/6000 -1/1200 1/2000 0;0 -1/2000 3/2000 0.002];

try

V=gauss_jordan(A);
A
for i=1:3
  fprintf('V(%2.0f) %5.5f\n',i,V(i))
endfor
catch err
  fprintf("Error: %s\n",e.message)  
end