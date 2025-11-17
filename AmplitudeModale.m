function [an,bn]=AmplitudeModale(L,el,kn,wn,n,H,Aff)
an=zeros(size(n));
bn=L*V*(cos(kn.*el)+K/N0*sin(kn.*el)./kn)./normY2;
%-> visualisation des amplitudes modales an
if(Aff>0)
figure(6);
stem(Freq,abs(bn),'LineWidth',2)
xlabel('fn [Hz]')
ylabel('|bn| [m]')
set(gca,'FontSize',24)
elseif(Aff==0)
disp('Le paramètre Aff=0 donc on n affiche pas les amplitudes modales');
else
    disp('Problème avec la variable Aff'); 