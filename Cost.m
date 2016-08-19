function [ cost ] = Cost( HB ,L,Heads)

cost = L(1)*(HeadLoss(L(1),9,1)./(Heads(1)-HB)).^(1.327/4.87) + ...
       L(2)*(HeadLoss(L(2),3,1)./(HB-Heads(2))).^(1.327/4.87) + ...
       L(3)*(HeadLoss(L(3),2,1)./(HB-Heads(3))).^(1.327/4.87);

end

