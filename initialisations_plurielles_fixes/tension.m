%initialisation de la physique de la corde
%
% aucune entrée pour l'instant
%
% E,ro en sortie

function[Note,C,N0,Def] = tension(L,ro,A,E)
% Tension : corde accordée sur le la-440
Note=440;       % Fréquence fondamentale [Hz]
C=2*L*Note;     % Celerité [m/s]
N0=ro*A*C^2;    % Tension [N]
Def=N0/(E*A);   % Deformation [~]

