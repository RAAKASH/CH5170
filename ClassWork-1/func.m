function [ value,grad,ext,dist ] = func( X )
%% Returns Function values
% Here X is a column  vector
% n is the function number 
% 
%%  Function 1

A = [0;0];
H = [0.36,0;0,1];

%%
value = A'*X + (X'*H*X)/2 ; 
grad = A + H*X; 
if(det(H)~=0)
ext = (H)\(-A);
else
ext =[nan;nan];    
end
dist = -(grad'*grad) /((grad)'*H*grad);
end

