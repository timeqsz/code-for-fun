mylength(0,[]).
mylength(X,[_|T]) :- 
    mylength(X1,T),
	X is X1 + 1.