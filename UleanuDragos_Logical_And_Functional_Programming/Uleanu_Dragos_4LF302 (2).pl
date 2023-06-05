%Uleanu Dragos, 4LF302
%Ex13
%(a) Scrieți un predicat care șterge toate secvențele de valori  consecutive.
%Eg.: remove([1, 2, 4, 6, 7, 8, 10], L) =>L=[4, 10].

%Model Matematic:

%consecutiv(nr,P): {nr is P-1 indiferent de situatie};

%remove(lista1,lista2):{0, daca l1,l2,l3 sunt consecutive}
%					   {adauga l2 in lista2, daca l1 si l2 nu sunt consecutive}
%					   {adauga l3 in lista2, daca l1 si l2 sunt consecutive, dar l3 nu este}

%cazuri testare: remove([1, 2, 4, 6, 7, 8, 10], L) =>L=[4, 10].

consecutiv(N,P):-
    N is P-1.

remove([],[]).
remove([H],[H]).

remove([H1,H2],[]):-
    consecutiv(H1,H2).
remove([H1,H2|T],[H1|L]):-
    not(consecutiv(H1,H2)),
    remove([H2|T],L).
remove([H1,H2,H3|T],L):-
    consecutiv(H1,H2),
    not(consecutiv(H2,H3)),
    remove([H3|T],L).
remove([H1,H2,H3|T],L):-
    consecutiv(H1,H2),
    consecutiv(H2,H3),
    remove(T,L).
    