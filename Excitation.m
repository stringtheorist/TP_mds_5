function [V,el,K]=Excitation(C,L,N0)
V=C*2;          % Vitesse de l'impact [m/]
el=L/6;         % Position de l'impact[m]
K=15.1*pi*N0/L;  % Raideur du ressort appliqué en s=L [N/m]
