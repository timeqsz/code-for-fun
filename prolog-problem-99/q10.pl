encode(L,L_result) :- 
    pack(L,L1),
	compress(L,L2),
	getnumlist(L1,L_num),
	zip(L_num,L2,L_result).

zip([],[],[]).
zip([H1|T1],[H2|T2],[[H1,H2]|X]) :-
    length(T1,N),
	length(T2,N),
    zip(T1,T2,X).

getnumlist([],[]).
getnumlist([H|T],[N1|X]) :- 
    length(H,N1),
	getnumlist(T,X).