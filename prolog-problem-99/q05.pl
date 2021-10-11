myreverse(L1,L2) :- myreverse_help(L1,L2,[]).
myreverse_help([],L2,L2) :- !.
myreverse_help([H|T],L2,Acc) :- myreverse_help(T,L2,[H|Acc]).
