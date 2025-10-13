function [t]=DomaineTemporel(Per,L)
  % Domaine temporel
dt=min(Per)/20; % Pas en temps [s]
tmax=max(Per)*2;% Temps maximum de la simulation [s]
t=0:dt:tmax;    % Echantillonage temporel [s]
%Nt=length(t);   % Nombre de points d'echantillonages en temps

%  Les variables non retournées peuvent être évaluées en interne dans les fonctions qui les utilisent.
