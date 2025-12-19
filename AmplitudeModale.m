function [an,bn]=AmplitudeModale(L,el,kn,wn,n,H,V,Aff)

global Typecorde;
switch Typecorde
  case 1
    an=2*H./(n*pi)*L/(L-el).*sin(kn*el)./(kn*el);
    bn=zeros(size(n));
  case 2
    an=zeros(size(n));
    bn=L*V*(cos(kn.*el)+K/N0*sin(kn.*el)./kn)./normY2;
end

%-> visualisation des amplitudes modales an
if(Aff>0)
  figure(6);
  stem(wn,abs(bn),'LineWidth',2)
  xlabel('fn [Hz]')
  ylabel('|bn| [m]')
  set(gca,'FontSize',24)
elseif(Aff==0)
  disp('Le paramètre Aff=0 donc on n affiche pas les amplitudes modales');
else
    disp('Problème avec la variable Aff');
end

