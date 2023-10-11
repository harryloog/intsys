
ruut2(A, B):-
    between(1, 9, A), between(1, 9, B),
      10 is A+B.

ruut4(A, B, C, D):-
    between(1, 9, A), between(1, 9, B),
    between(1, 9, C), between(1, 9, D),
    S=10, 
    S is A+B, S is C+D, S is A+C, S is B+D.

ruut3(A, B, C, D, E, F, G, H, I):-
    between(1, 9, A), between(1, 9, B),
    between(1, 9, C), between(1, 9, D),
    between(1, 9, E), between(1, 9, F),
    between(1, 9, G), between(1, 9, H),
    between(1, 9, I),
    S=10, 
    S is A+B+C, 
    S is D+E+F, 
    S is G+H+I,
    S is A+D+G,
    S is B+E+H,
    S is C+F+I.
    

	