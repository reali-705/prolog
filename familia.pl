% fatos
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).
homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).
% genitor(pai | mae, filho | filha).
genitor(ana, eva).
genitor(ivo, eva).
genitor(bia, rai).
genitor(gil, rai).
genitor(bia, clo).
genitor(gil, clo).
genitor(bia, ary).
genitor(gil, ary).
genitor(eva, noe).
genitor(rai, noe).
genitor(ary, gal).
genitor(lia, gal).

% regras
pai(X, Y) :- homem(X), genitor(X, Y).
mae(X, Y) :- mulher(X), genitor(X, Y).
avo(X, Y) :- genitor(X, Z), genitor(Z, Y).
filho(X, Y) :- genitor(Y, X), homem(X).
filha(X, Y) :- genitor(Y, X), mulher(X).
irmao(X, Y) :- homem(X), 
    pai(Z, X), pai(Z, Y),
    mae(W, X), mae(W, Y),
    X \= Y.
irma(X, Y) :- mulher(X),
    pai(Z, X), pai(Z, Y),
    mae(W, X), mae(W, Y),
    X \= Y.
meio_irmao(X, Y) :- homem(X),
    pai(A, X), pai(B, Y),
    mae(C, X), mae(D, Y),
    X \= Y,
    (A \= B, C == D); (A == B, C \= D).
meio_irma(X, Y) :- mulher(X),
    pai(A, X), pai(B, Y),
    mae(C, X), mae(D, Y),
    X \= Y,
    (A \= B, C == D); (A == B, C \= D).
tio(X, Y) :-
    genitor(A, Y),
    ( irmao(X, A);
    irma(B, A), mae(B, C), pai(X, C) ).
tia(X, Y) :-
    genitor(A, Y),
    ( irma(X, A);
    irmao(B, A), pai(B, C), mae(X, C) ).
