%% General data
close all;
X = -200:1:0;
Y = -100:1:100;
a = length(X);
b = length(Y);
Z = zeros(a,b);
ext = zeros(2,10);
%% Run through all functions
for n =1:10
%% Compute Z values
for i = 1:a
   for j = 1:b 
       x = [X(i);Y(j)];
       [Z(i,j),~,ext(:,n)] = func(x,n);
  
   end
end

%% Contour plots
[C,h]=contour(X,Y,Z');
title('Contour Plot');
clabel(C,h);
xlabel('X axis')
ylabel('Y axis')
axis equal;
pause;
%% Max increase, Decrease
grad = zeros(2,10);
dist = zeros(1,10);
for n=1:10
randp = [3;3];
[~,grad(:,n),~,dist(n)] = func(randp,n);
end
end