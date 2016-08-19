function [HL] = HeadLoss( L,Q,D )
%% Returns The Head Loss of the function
% Where Q is the ?ow rate in m3/min, HA,HB,?H are the heads in meters,
% L is the length of pipe in meter, D is the inner diameter of the pipe in mm 

C = 4.457*10^8;   
HL = C*L*Q^1.85/D^4.87; 

end

