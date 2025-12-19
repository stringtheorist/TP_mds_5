function Son(u, t)
    dt=t(2)-t(1);
    fs = round(1/dt);

    % Normaliser le déplacement dans l'intervalle [-1, 1]
    son_data = u(100,:);
    tab=[];
    for i=1:500
        tab=[tab son_data];
    end

    % Lecture de son
    sound(tab, fs,24);

    % Création du fichier 
    audiowrite('son.wav', tab, fs);

    clear tab fs;
end
