%% Start point initialize
close all;
X0 = [3.12;0.86];
x = X0 ;
xprev = [0;0];
X = X0';
i = 1;
val = func(X0,nan);
%% Contour plot
xran = 0.5:.001:3.5;
yran = -3.5:.001:2;
m = length(xran);
n = length(yran);
Z = zeros(m,m);
for i = 1:m
    for j =1:n
    Z(i,j) = func([xran(i);yran(j)],[1,0,0,0,0]);
    end
end
contour(yran,xran,Z);
hold on;
pause;
%% Solving using newton
xprev = [0;0];
x     = [3.12;0.86];
while(norm(x - xprev)>10^-10)
i = i+1;
[val,~,~,p,~] = func(x,nan);
xprev = x;
x = x + p;
X(i,:) = x' ; 
end
%% Plotting descent
plot(X(:,1),X(:,2));
xlabel('X axis');
ylabel('Y axis');
title('Newton Descent');
%% Plot looks bad with axis equal
axis equal;

%% Finding THE point (The point where the Value(x(k+1)) > Value(x(k)))
maxiter = 8 ;
i = 1;
while(i<=maxiter)
j = -1;
inc = .1 ;
flag = 0;
while(flag == 0)
j = j + 1;
x = [1+2*i;0.86+j*inc];
[VAL,~,~,p,~] = func(x,nan);
[VAL1] = func(x+p,nan);
if(VAL1 > VAL )
flag = 1;
x'
end
end
i = i+1;
end