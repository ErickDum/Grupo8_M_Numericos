function Px_Pfx=golden_sec(f,a,b,iter,error,g)
% Variables de entrada:
% f: Funcion a la cual se aplica el metodo
% a: Extremo inferior
% b: Extremo superior 
% iter: Numero maximo de iteraciones
% error: Error de tolerancia
% g: numero de grafica
% Variables de salida:
% x_min,fx_min: Par ordenado min 
if (b<a)
  error('El limite superior debe ser mayor que el inferior')
endif
tau=0.618; 
k=0;
x1=a+(1-tau)*(b-a);
x2=a+tau*(b-a);
f_x1=f(x1);
f_x2=f(x2);
while((abs(b-a)>error)&& (k<iter)) 
   k=k+1;
   if (f_x1<f_x2)
       b=x2;
       x2=x1; 
       x1=a+(1-tau)*(b-a);
       f_x1=f(x1);
       f_x2=f(x2);
   else 
       a=x1;
       x1=x2;
       x2=a+tau*(b-a);
       f_x1=f(x1);
       f_x2=f(x2);    
   end

   figure(g)
   plot(x1,f_x1, '.b', x2, f_x2, '.r')
   hold on
  
end
if (f_x1<f_x2)
    sprintf('valor minimo= %f',f_x1)
else
    sprintf('valor minimo= %f',f_x2)
end

end
    
       
       
       