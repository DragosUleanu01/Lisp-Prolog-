% Uleanu Dragos-FLorin, 4lF302
%Ex10.


%(a)  Scrieți un predicat care calculează  minimul unei liste:
%Model Matematic:
% minim(lista, val1,val2) = { val is l1, minim([l2,l3,l4...],val1,val2), daca l1<val;}
%					  		{ minim(l2,l3,l4...],l1,val), daca l1 >= val.}
%Cazuri de testare: minim([25,75,12,3],100,Min) -> Min = 3;


minim([H|T], Min) :-
    minim(T, H, Min).

minim([], Min, Min).
minim([H|T], Min0, Min) :-
    Min1 is min(H, Min0),
    minim(T, Min1, Min).


%(b) Scrieți un predicat care 
%calculează valoarea rezultată din suma elementelor de 
%pe poziții pare și diferența elementelor de pe poziții impare.

%Model Matematic:

%predicat(lista,pozitie,val): { val is val - l1, predicat([l2,l3,l4...], pozitie+1,val), daca pozitie % 2 == 1;}
%							  { val is val + l1, predicat([l2,l3,l4...], pozitie+1,val), daca pozitie % 2 == 0;}

%Cazuri de testare: predicat([1,2,3,4,5], 0, val)] -> val = 3;

predicat(list,a,b).

predicat([H|T],index,val):-
    predicat(T,index1,val),
    index is index1 + 1,
    mod(index,2) =:= 0,
    val is val1 + H.
	
predicat([H|T],index,val):-
    predicat(T,index1,val),
    index is index1 + 1,
    mod(index,2) =:= 1,
    val is val1 - H.
    