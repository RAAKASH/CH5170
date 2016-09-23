function [ val , Grad , Hessian , p ,alpha ] = func( X , Y)
%% Newton Method 
% Quadratic Convergence
% Try solving for p without inversion 
%% Returns Function Value , Grad , Hessian , p ,alpha 
if (isnan(Y))
Y = [1,1,1,1,1];
end 
x = X(1);
y = X(2);
val = 0;
Grad = [0;0];
Hessian = [0,0;0,0];
p = [0;0];
alpha = 1;
if(Y(1)==1)
val = (x-2)^4 + ((x-2)^2)*y^2 + (y+1)^2;
end
if(Y(2)==1)
Grad = [4*(x-2)^3 + 2*(x-2)*y^2 ; 2*((x-2)^2)*y + (y+1)*2];
end
if(Y(3)==1)
Hessian = [12*(x-2)^2 + 2*y^2 , 4*y*(x-2) ; 4*y*(x-2), 2*(x-2)^2 + 2 ];
end
if(Y(4) == 1)
p = -Hessian\Grad ;
end
if(Y(5)==1)
alpha = 1;
end
end

