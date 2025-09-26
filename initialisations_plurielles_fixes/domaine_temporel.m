%initialisation du domaine temporel
%
% Per en entrée
%
% dt,tmax,t,Nt en sortie

function[dt,tmax,t,Nt]=domaine_temporel(Per)
% Domaine temporel
dt=min(Per)/20; % Pas en temps [s]
tmax=max(Per)*2;% Temps maximum de la simulation [s]
t=0:dt:tmax;    % Echantillonage temporel [s]
Nt=length(t);   % Nombre de points d'échantillonages en temps
