%Numarul 2
%Uleanu Dragos Florin 4LF302

%Suma tuturor numerelor dintr-o lista;

%Model Matematic:
% Suma(l1,l2,l3... , 0) = { 0 , daca lista este goala;}
%   					  { S este + suma(l2,l3,l4...,S), daca mai sunt elemente in lista.}

suma([],0).

suma([H|T],S):-
    suma(T,ST),
    S is H+ST.


