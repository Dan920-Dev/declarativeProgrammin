% Locales
local(local1).
local(local2).
local(local3).
local(local4).
local(local5).
local(local6).
local(local7).
local(local8).


puede_estar_en(X, Y, Z) :- % Regla para saber en que locales puede estar pepito
    local(Z),     % Z es un local
    \==(X, Z),    % X diferente de Z
    \==(Y, Z).    % Y diferente de Z
