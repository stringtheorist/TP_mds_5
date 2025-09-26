%initialisation du domaine spatial
%
% Lamb,L en entrée
%
% ds,s,Ns en sortie

function[ds,s,Ns]=domaine_spatial(Lamb,L)
% Domaine spatial
ds=min(Lamb)/20;% Pas en espace [m]
s=(0:ds:L);     % Echantillonage spatial [m]
Ns=length(s);   % Nombre de points d'échantillonages en espace
