compress([A|[]],[A]).
compress([H,H|T],X) :- compress([H|T],X).
compress([A,B|T],[A|X]) :- compress([B|T],X).
