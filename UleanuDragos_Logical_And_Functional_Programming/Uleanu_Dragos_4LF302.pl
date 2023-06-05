
%(a) Scrieți un predicat care calculează diferența a două mulțimi.
    
%(b) Scrieți un predicat care adaugă valoarea 1 după fiecare element al unei liste.


%a
diferenta([], _, []).
diferenta([H|R],Set,E):- 
    member(Set, H), !, diferenta(R,Set,E).
diferenta([H|T], Set, [H|Set2]):- 
    diferenta(T,Set,Set2).
%b
adauga([],_,[]).      
adauga([H|R],E,[H,E|Y]):- 
    adauga(R,E,Y).


%Modele Matematice
%a
%diferenta(lista,multime,lista_goala) = { diferenta(lista, multime, element)  daca elementul din A nu se gaseste in B
%					{diferenta(lista,multime,lista_goala) daca elementul din A se gaseste in B}

%b;

adauga(lista,Element,Lista_Goala) = { adauga(lista,1,Y,lista_goala) in toate cazurile}
