function [an,bn]=AmplitudeModale(L,el,kn,wn,n,H,Aff)

an=2*H./(n*pi)*L/(L-el).*sin(kn*el)./(kn*el);
bn=zeros(size(n));

%-> visualisation des amplitudes modales an
if(Aff>0)
  figure(6);
  stem(wn,abs(an),'LineWidth',2)
  xlabel('fn [Hz]')
  ylabel('|bn| [m]')
  set(gca,'FontSize',24)
elseif(Aff==0)
  disp('Le paramètre Aff=0 donc on n affiche pas les amplitudes modales');
else
    disp('Problème avec la variable Aff');
end

