function [L,H,el,Nw,R,E,ro,Note,Aff] = Param(TypeCorde)
%PARAM Summary of this function goes here
%   Detailed explanation goes here
switch TypeCorde
    case 1
    [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit(1);

    case 2 
    [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit(2);
    
    case  3
    [L,R,E,ro,Note,H,el,Nw,Aff]=ParamInit(3);
end