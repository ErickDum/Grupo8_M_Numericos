function [datos]=biseccion(f, xa, xb, n_i=100, tol=0.001)
  datos = zeros(2,1);
  error = 100;
  xr = 0;
  i = 0;
  while (i < n_i)
    ea = xr; 
    xr = (xa + xb)/2;
    if (f(xa)*f(xr) > 0)
      xa = xr;
    else
      xb = xr;
    endif
    error = abs(((ea-xr)/xr)*100);
    datos = [datos [xr; error]];
    if (error < tol)
       i = n_i -1;
     endif
    i++;
  endwhile
end

