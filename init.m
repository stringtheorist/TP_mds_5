%% ========================================================================
%% INITIALISATION =========================================================
function[geo,materiau]=init();

addpath ~/TP_mds_5/initialisations_plurielles_fixes;

% Appels des fonctions d'initialisations
% Rappel : implementer des input utilisateur'ice après eclatage des codes

[L,R,A,E,ro]=geomEtMat()

[Note,C,N0,Def]=tension(L,ro,A,E);

[H,el]=excitation(L);

[nmax,n,Nw,kn,wn,Lamb,Per,Freq]=domaine_modal(L,C);

[ds,s,Ns]=domaine_spatial(Lamb,L);

[dt,tmax,t,Nt]=domaine_temporel(Per);

##% Domaine modal
##nmax=10;        % Nombre maximal de mode considéré
##n=(1:nmax)';    % Indices modaux
##Nw=nmax
##kn=n*pi/L;      % Nombres d'ondes [1/m] : corde fixée aux deux extrémités
##wn=C*kn;        % Pulsation [rad/s], relation de dispersion
##Lamb=2*pi./kn;  % Longueur d'onde de chaque mode [m]
##Per=2*pi./wn;   % Periode de chaque mode [s]
##Freq=1./Per;    % Fréquence de chaque mode [Hz]
##% Domaine spatial
##ds=min(Lamb)/20;% Pas en espace [m]
##s=(0:ds:L);     % Echantillonage spatial [m]
##Ns=length(s);   % Nombre de points d'échantillonages en espace
##% Domaine temporel
##dt=min(Per)/20; % Pas en temps [s]
##tmax=max(Per)*2;% Temps maximum de la simulation [s]
##t=0:dt:tmax;    % Echantillonage temporel [s]
##Nt=length(t);   % Nombre de points d'échantillonages en temps
