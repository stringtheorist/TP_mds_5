%initialisation du domaine modal
%
% L,C en entrée
%
% nmax,n,kn,wn,Lamb,Per,Freq en sortie

function[nmax,n,Nw,kn,wn,Lamb,Per,Freq]=domaine_modal(L,C)

% Domaine modal
nmax=10;       % Nombre maximal de mode considéré
n=(1:nmax)';    % Indices modaux
Nw=nmax;
kn=n*pi/L;      % Nombres d'ondes [1/m] : corde fixée aux deux extrémités
wn=C*kn;        % Pulsation [rad/s], relation de dispersion
Lamb=2*pi./kn;  % Longueur d'onde de chaque mode [m]
Per=2*pi./wn;   % Periode de chaque mode [s]
Freq=1./Per;    % Fréquence de chaque mode [Hz]
