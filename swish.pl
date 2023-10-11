algus(q0).
seos(q0, q1, 1).
seos(q1, q1, 1).

kahene():-
    algus(x), seos(x, y, a), seos(y, _, 0), write(a), writeln(0), false.

neljane():-
	algus(X), seos(X, Y, A), seos(Y, X, 0), seos(Z, Y, C), seos(Y, _, 0), write(A), write(B), write(C), writeln(D), false.

neljane2(A, B, C, D):-
	algus(X), seos(X, Y, A), seos(Y, Z, 0), seos(Z, V, c), seos(V, _, D).


