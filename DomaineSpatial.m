function [s]=DomaineSpatial(Lamb,L)
  % Domaine spatial
ds=min(Lamb)/20;% Pas en espace [m]
s=(0:ds:L);     % Echantillonage spatial [m]
%Ns=length(s);   % Nombre de points d'echantillonages en espace

%  Les variables non retournées peuvent être évaluées en interne dans les fonctions qui les utilisent.
