islist([_|_]).

my_flatten([],[]).
my_flatten([H|T],X):-
    islist(H),
	my_flatten(H,X1),
    my_flatten(T,X2),
	append(X1,X2,X).
my_flatten([H|T],[H|X1]):-
    my_flatten(T,X1).