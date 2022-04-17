dna_strand(['A'|Tail], ['T'|Tail2]) :- dna_strand(Tail,Tail2).
dna_strand(['T'|Tail], ['A'|Tail2]) :- dna_strand(Tail,Tail2).
dna_strand(['C'|Tail], ['G'|Tail2]) :- dna_strand(Tail,Tail2).
dna_strand(['G'|Tail], ['C'|Tail2]) :- dna_strand(Tail,Tail2).