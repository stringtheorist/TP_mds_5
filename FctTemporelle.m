function T=FctTemporelle(Nw,wn,an,bn,t,Aff)
% Fonction en temps
for in=1:Nw
    % T_ij, avec i=>n et j=>t
    T(in,:)=an(in)*cos(wn(in)*t)+bn(in)*sin(wn(in)*t)/wn(in); 
end