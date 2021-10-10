function [datos]=newton(f, df, x0, n_i, tol = 0.001)
   datos = zeros(3,1);
   if (df(x0)==0)
     error('No es posible hallar la raiz')
   endif
   i = 0; 
   while (i < n_i)
     x1 = x0 - (f(x0)/df(x0));
     error = abs((x1-x0)/x1)*1000;
     error = round(error)/1000;
     datos = [datos [i; x1; error]];
     if (error < tol)
       i = n_i -1;
     endif
     x0 = x1;
     i ++;
   endwhile
 endfunction