% initialisation de la géométrie et des constantes liées au materiau de la corde
%
% aucune entrée pour l'instant
%
% L,R,A | E,ro en sortie

function[L,R,A,E,ro] = geomEtMat()
% Geometrie : section cicrculaire
L=1;            % Longueur [m]
R=0.001;        % Rayon [m]
A=pi*R^2;       % Aire [m^2]

% Materiau : acier
E=210e9;        % Module de Young [Pa]
ro=7800;        % Masse volumique [kg/m^3]
