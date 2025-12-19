% function Film(u,s,L,H)
% name="Corde.mp4";
% figure(6);               
% 
% v = VideoWriter(name);   
% open(v) ;                        
% 
% Nt = size(u,2);
% 
% for j = 1:Nt
% 
%     plot(s, u(:,j), 'k');
%     axis([0 L -H H]); axis equal;
%     xlabel('s [m]');
%     ylabel('u(s,t) [m]');
%     title('déplacement de la corde')
%     drawnow;                  
% 
%     frame = getframe(gcf);     
%     writeVideo(v, frame);
% end
% 
% 
% close(v);
% 
% end
function Film(u, s, L, H)

    name = "Corde.avi";     % AVI fonctionne partout

    figure(6);
    clf;

    % Création vidéo (profil par défaut)
    v = VideoWriter(name);
    v.FrameRate = 25;
    open(v);

    s = s(:);               % sécurité dimension
    Nt = size(u, 2);

    for j = 1:Nt
        plot(s, u(:, j), 'k', 'LineWidth', 1.5);
        axis([0 L -H H]);
        grid on;

        xlabel('s [m]');
        ylabel('u(s,t) [m]');
        title('Déplacement de la corde');

        drawnow;

        frame = getframe(gcf);
        writeVideo(v, frame);
    end

    close(v);
    disp("Vidéo créée : Corde.avi");

end

