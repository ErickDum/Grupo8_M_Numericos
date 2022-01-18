function integral_hermite = g_hermite(f,limite_inferior,limite_superior,n)
% Metodo de gauss-hermite para hallar la integral aproximada de una funcion
% Parametros de entrada:
% f: funcion de la que se planea hallar la integral
% n: Numero de puntos
% limite_inferior : limite inferior de integracion
% limite_superior : limite superior de integracion
% Parametros de salida:
% integral_hermite: Valor aproximado de la integral por el metodo de gauss-hermite
    integral_hermite = I;
    I=0;
    if  limite_inferior>limite_superior;
      error('Limites de integracion ingresados incorrectos')
    end
    switch n
        case 2
           x=[0.7071,-0.7071];   
           a=[0.8862,0.8862];    
            for i=0:n   
                I=I+(f(x(i))*a(i));  
            end
        case 3
           x=[0,1.224745,-1.224745];
           a=[1.181636,0.295409,0.295409];
            for i=1:n
                I=I+(f(x(i))*a(i));  
            end
        case 4   
            x=[0.52648,-1.650680,-0.52648,1.650680]
            a=[0.804914,0.813128,0.804914,0.813128]
            for i=1:n
                I=I+(f(x(i))*a(i))  
            end
        case 5
            x=[0,-0.958572,-2.020183,0.958572,2.020183];
            a=[0.945308,0.393619,0.199532,0.393619,0.199532];
            for i=1:n
                I=I+(f(x(i))*a(i));
            end
        end 
        integral_hermite = I;
    end