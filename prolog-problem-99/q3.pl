element_at(X,[X|_],1).
element_at(X,[_|T],Position) :-
    Position > 1,
    Position1 is Position - 1,
    element_at(X,T,Position1).
