mysplit([A],[A],[]).
mysplit([A,B|T],[A],[B|T]):- A \= B.
mysplit([H,H|T],[H|T1],Y):-
    mysplit([H|T],T1,Y).

pack([],[]).
pack(L,[L1|Y]) :- mysplit(L,L1,L2),pack(L2,Y).