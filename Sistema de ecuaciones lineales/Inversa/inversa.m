%Funcion para obtener la inversa de una matriz
% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 5/11/2021

function inversa(A)
% La funcion inversa(A) nos permite encontrar la inversa de una matriz
% sin la utilizacion de funciones predeterminadas del programa
% Parametros de entrada:
% A = Matriz inicial de la cual se pretende hallar su matriz inversa
% Parametros de salida:
% A = matriz original que se ingreso
% n = Matriz inversa de la matriz original ingresada (A)
% determinante = Determinante de la matriz A, necesario para hallar la matriz inversa
ren = length(A);
reiniciar=ren;
x=2;
acu=0;
y=ren-1;
dec=ren;
mov=ren-1;
a=1;
b=1;
fila=1;
i=1;
d=1;
e=1;
au=ren-1;
in=1;
columna=2;
repeticiones=0;
repeticiones2=0;
lim=ren;
dar=1;
temporal=0;
menor=1;
np=ren;
paratod=ren;
increm=1;
parcon=0;
temporaliden=0;

m= A; 
n = eye(size(A));
o=[m n];

fprintf('determinante: %5.2f\n',det(m))
if(det(m)~=0)

while (menor<=np)
for r = 1 : np 
for c = 1 : np
    
if((r==c)&&(r>parcon)&&(c>parcon))
ren=np;
end

 if((r==c)&&(m(r,c)==0))
     for indar=1: np
     temporal=m(r,:);
     m(r,:)=m(ren,:);
     m(ren,:)=temporal;
     
     temporaliden=n(r,:);
     n(r,:)=n(ren,:);
     n(ren,:)=temporaliden; 
     
     end
     o=[m n];
     o
 end 
 if((r==c)&&(r<parcon)&&(c<parcon))
  ren=ren+1;  
end
end 

end

ren=np-increm;
increm=increm+1;
menor=menor+1;
parcon=parcon+1;
end
ren=reiniciar;

o=[m n];


while(a<=ren)
for r = a : ren
for c = b : ren
    
   
    if(r==fila)
        n(fila,:)=n(fila,:)/m(fila,fila);
        m(fila,:)=m(fila,:)/m(fila,fila);       
    end
    
    if(r==x)
        n(x,:)=n(x,:)-(n(a,:)*m(x,fila)); 
        m(x,:)=m(x,:)-(m(a,:)*m(x,fila)); 
    end
   
 repeticiones=repeticiones+1;
end
   if(r==i)
       x=i;
   end    
   
o=[m n];

x=x+1;
  
end
    if (r==ren&&c==ren)
       
         a=a+1;
         b=b+1;
         fila=fila+1;
         x=b+1;
         i=i+1;      
     end
end
ren=reiniciar;



while(0<ren)
for r =ren :-1: 1
for c =ren :-1: 1
     
     if((r-1)==y)
        n(y,:)=n(y,:)-(n(dec,:)*m(y,dec));  
        m(y,:)=m(y,:)-(m(dec,:)*m(y,dec)); 
     end
   repeticiones2=repeticiones2+1; 
  acu=c;
end

o=[m n];

y=y-1;

if(y==0)
    ren=0;
end
end
ren=lim-dar;
    if (r==1&&acu==1)
        
        dar=dar+1;
        dec=dec-1;
        au=au-1;
        y=au;    
    end
    if(au==0)
        ren=0;
    end
end


else 
disp('NO EXISTE LA MATRIZ INVERSA');
end    
disp('Matriz original');
A
disp('Matriz invertida');
n