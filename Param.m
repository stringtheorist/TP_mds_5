function [L,H,el,Nw,R,E,ro,Note,Aff] = Param()
%PARAM Summary of this function goes here
%   Detailed explanation goes here
global Typecorde

switch Typecorde
    case 1
    [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit();

    case 2
    [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit();

    case  3
    [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit();
end
