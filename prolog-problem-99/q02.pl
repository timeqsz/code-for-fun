last_but_one(X,[X,_]).
last_but_one(X,[_,H|T]):-
    last_but_one(X,[H|T]).