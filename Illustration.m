function Illustration(Type, u, s, t)
%ILLUSTRATION Affiche différentes représentations de u(s,t)

switch Type
    case 1
        % Visualisation de u(s,t) à des temps donnés
        figure;
        plot(s, u(:,[1 10 20]), 'LineWidth', 2);
        xlabel('s [m]'); ylabel('u(s,t) [m]');
        legend(['t = ' num2str(t(1))], ['t = ' num2str(t(10))], ['t = ' num2str(t(20))]);
        axis equal;
        set(gca, 'FontSize', 16);
        title('Profil spatial à différents instants');
        
    case 2
        % Visualisation de u(s,t) à des points donnés
        figure;
        plot(t, u([1 10 20],:), 'LineWidth', 2);
        xlabel('t [s]'); ylabel('u(s,t) [m]');
        legend(['s = ' num2str(s(1))], ['s = ' num2str(s(10))], ['s = ' num2str(s(20))]);
        set(gca, 'FontSize', 16);
        title('Évolution temporelle à différents points');

    case 3
        % Animation spatio-temporelle de u(s,t)
        figure;
        for j = 1:length(t)
            plot(s, u(:,j), 'k', 'LineWidth', 2); hold on;
            plot(s([1 10 20]), u([1 10 20],j), 'o', 'MarkerSize', 8, 'LineWidth', 2);
            hold off;
            xlabel('s [m]'); ylabel('u(s,t) [m]');
            axis equal; axis([0, max(s), -max(abs(u(:))), max(abs(u(:)))]);
            set(gca, 'FontSize', 16);
            title(['Animation - t = ' num2str(t(j), '%.2f') ' s']);
            pause(0.05);
        end

    otherwise
        error('Type d''illustration non reconnu. Utilisez 1, 2 ou 3.');
end

end
