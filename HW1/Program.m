%% Exhaustive search
a = 87; %Lower  Constrain Head 
b = 100;%Higher Constrain Head
Heads = [100,87,83];
L=[300,500,400];
cost = Cost(x,L,Heads);
val = (a+.01) :.01:(100-.01);
result = val((Cost(val,L,Heads)==(min(Cost(val,L,Heads)))));
%% Golden Search
R =(5^.5 -1)/2;
d = (b-a)*R;
X = [a+.01,b-.01];
x = [(X(1)+d),(X(2)-d)];
i=1;
Data=[0,0];
while((x(1)-x(2))^2>10^-10)
x = [(X(1)+d),(X(2)-d)];
% X = X(Cost(X,L,Heads) == min(Cost(X,L,Heads)));
% X = [x(Cost(x,L,Heads) == min(Cost(x,L,Heads))),X];
C = Cost(x,L,Heads);
if(C(1)>=C(2))
X =[X(1),x(1)];
else
X =[x(2),X(2)];
end
d = (X(2)-X(1))*R;
Data(i,:) = X; 
i =i+1;
end
header = {'Xa';'Xb'};
xlswrite('Data',header,'section I');
xlswrite('Data' ,Data','section I','B1');
