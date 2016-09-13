function [ value,grad,ext,dist ] = func( X,n )
%% Returns Function values
% Here X is a column  vector
% n is the function number 
% 
%%  Function 1
if(n==1)
A = [4;8];
H = [-4,0;0,-4];

%% Function 2
elseif(n==2)
A = [-8;-8];
H = [4,0;0,4];

%% Function 3
elseif(n==3)
A = [-3.07;8.54];
H = [-10,-3.46;-3.46,-6];

%% Function 4
elseif(n==4)
A = [2.86;16.17];
H = [8.96,5.91;5.91,11.04];

%% Function 5
elseif(n==5)
A = [8.57;2.55];
H = [0.69,3.94;3.94,-0.69];

%% Function 6
elseif(n==6)
A = [5.59;9.69];
H = [-0.05,5.64;5.64,4.05];

%% Function 7
elseif(n==7)
A = [18;144];
H = [-1,-8;-8,-64];

%% Function 8
elseif(n==8)
A = [1;0];
H = [1,3;3,9];

%% Function 9
elseif(n==9)
A = [6;12];
H = [-1,-2;-2,-4];

%% Function 10
elseif(n==10)
A = [1;0];
H = [1,5;5,25];
%% None 
else
A = [0;0];
H = [0,0;0,0]; 
end
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

