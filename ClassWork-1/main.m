%% General data
close all;
X = -5:.1:5;
Y = -4:.1:4;
a = length(X);
b = length(Y);
Z = zeros(a,b);
ext = zeros(2,10);

%% Compute Z values

for i = 1:a
   for j = 1:b 
       x = [X(i);Y(j)];
       [Z(i,j)] = func(x);
  
   end
end

%% Contour plots
[C,h]=contour(X,Y,Z');
title('Contour Plot');
clabel(C,h);
xlabel('X axis')
ylabel('Y axis')
axis equal;
hold on;
pause;
%% Solving for the minimum using Steepest descent  
x = [-4.52;3.56];
X = x';
xprev = [0,0]';
i = 1;
while (norm(xprev-x)>10^-10)
i = i+1;
[~,p,~,alph] = func(x);
xprev = x ;
x = x + alph*p ;
X(i,:) = x';
% p 
% alph
% X(i,:)
% pause;
end
%% Plotting path
plot(X(:,1),X(:,2));