%% ========================================================================
%% ANALYSE MODALE =========================================================
% Modes propres
for in=1:nmax
    % Y_ij, avec i=>n et j=>s
    Y(in,:)=sin(kn(in)*s);
end
%=> visualisation de quelques modes propres
figure(1);
plot(s,Y([1:3 nmax],:),'LineWidth',2)
xlabel('s [m]')
legend('n=1','n=2','n=3','n=nmax')
set(gca,'FontSize',24)

% Amplitude modale
an=2*H./(n*pi)*L/(L-el).*sin(kn*el)./(kn*el);
bn=zeros(size(n));
%=> visualisation des amplitudes modales an
figure(2);
stem(wn,abs(an),'LineWidth',2)
xlabel('wn [rad/s]')
ylabel('|an| [m]')
set(gca,'FontSize',24)

% Fonction en temps
for in=1:nmax
    % T_ij, avec i=>n et j=>t
    T(in,:)=an(in)*cos(wn(in)*t)+bn(in)*sin(wn(in)*t)/wn(in);
end
%=> visualisation de T(t) pour quelques modes
figure(3);
plot(t,T([1:3 nmax],:),'LineWidth',2)
xlabel('t [s]')
legend('n=1','n=2','n=3','n=nmax')
set(gca,'FontSize',24)
%% ========================================================================

