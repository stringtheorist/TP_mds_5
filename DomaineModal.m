function [kn,wn,Lamb,Per,Freq,n]=DomaineModal(Nw,L,C)
global CL
  % Domaine modal
n=(1:Nw)';

kn=n*pi/L;

wn=C*kn;        % Pulsation [rad/s], relation de dispersion
Lamb=2*pi./kn;  % Longueur d'onde de chaque mode [m]
Per=2*pi./wn;   % Periode de chaque mode [s]
Freq=1./Per;    % Frequence de chaque mode [Hz]
