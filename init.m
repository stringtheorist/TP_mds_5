%% ========================================================================
%% INITIALISATION =========================================================
function[L,R,A,E,ro,Note,C,N0,Def,H,el,nmax,n,Nw,kn,wn,Lamb,Per,Freq,ds,s,Ns,dt,tmax,t,Nt]=init();
clear;close all;clc;

addpath ~/TP_mds_5/initialisations_plurielles_fixes;
addpath ~/TP_mds_5/initialisations_plurielles_ressorts;

prompt = "type = 0 : corde appui simple \n type = 1 : corde sur ressors \n, type = 2 : demande d'input \n";
type = input(prompt)

if type==0
  prompt = "type 0 \n";
  % Appels des fonctions d'initialisations
  % Cas : Corde Appui Simple

  [L,R,A,E,ro]=geomEtMat();

  [Note,C,N0,Def]=tension(L,ro,A,E);

  [H,el]=excitation(L);

  [nmax,n,Nw,kn,wn,Lamb,Per,Freq]=domaine_modal(L,C);

  [ds,s,Ns]=domaine_spatial(Lamb,L);

  [dt,tmax,t,Nt]=domaine_temporel(Per);

elseif type==1
  prompt = "type 1 \n";
  % Appels des fonctions d'initialisations
  % Cas : Corde Sur Ressort

  [L,R,A,E,ro]=geomEtMat();

  [Note,C,N0,Def]=tension(L,ro,A,E);

  [H,el]=excitation(L);

  [nmax,n,Nw,kn,wn,Lamb,Per,Freq]=domaine_modal(L,C);

  [ds,s,Ns]=domaine_spatial(Lamb,L);

  [dt,tmax,t,Nt]=domaine_temporel(Per);


else
  prompt = "type 2 \n";
  % Rappel : implementer des input utilisateur'ice après eclatage des codes

  [L,R,A,E,ro]=geomEtMat();

  [Note,C,N0,Def]=tension(L,ro,A,E);

  [H,el]=excitation(L);

  [nmax,n,Nw,kn,wn,Lamb,Per,Freq]=domaine_modal(L,C);

  [ds,s,Ns]=domaine_spatial(Lamb,L);

  [dt,tmax,t,Nt]=domaine_temporel(Per);
end

