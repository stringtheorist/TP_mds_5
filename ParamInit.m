function [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit()

    %L=input(prompt) % Longueur [m]
    L = 100;
    R=0.001;        % Rayon [m]

    E=210e9;        % Module de Young [Pa]
    ro=7800;        % Masse volumique [kg/m^3]

    Note=440;       % Frequence fondamentale [Hz]
    H=L/4;          % Hauteur [m]
    el=L/5;         % postion [m]

    nmax=10;        % Nombre maximal de mode considere
    n=(1:nmax)';    % Indices modaux
    Nw=nmax;

    Aff=1;          % Variable de type d'affichage [0,1,2,3];

