function [A,C,N0,Def,V]=ParamInter(R,L,ro,E,Note)
A=pi*R^2;       % Aire [m^2]
C=2*L*Note;     % Celerite [m/s]
V = C*2;        % Vitesse d el'impact en t = 0
N0=ro*A*C^2;    % Tension [N]
Def=N0/(E*A);   % Deformation [~]
