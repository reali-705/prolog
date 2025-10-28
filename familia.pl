% fatos
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).
mulher(maria).
homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).
homem(thor).
% genitor(pai | mae, filho | filha).
genitor(ana, eva).
genitor(ivo, eva).
genitor(ana, maria).
genitor(ivo, maria).
genitor(bia, rai).
genitor(gil, rai).
genitor(bia, clo).
genitor(gil, clo).
genitor(bia, ary).
genitor(gil, thor).
genitor(bia, thor).
genitor(gil, ary).
genitor(eva, noe).
genitor(rai, noe).
genitor(ary, gal).
genitor(lia, gal).

% regras
pai(X, Y) :- homem(X), genitor(X, Y).
mae(X, Y) :- mulher(X), genitor(X, Y).
casal(X, Y) :- genitor(X, Z), genitor(Y, Z), X \= Y.
avos(X, Y) :- genitor(X, Z), genitor(Z, Y).
avoh(X, Y) :- pai(X, Z), genitor(Z, Y).
avom(X, Y) :- mae(X, Z), genitor(Z, Y).
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
feliz(X) :- genitor(X, _).
familia(X, Y, Z) :- pai(X, Z), mae(Y, Z).
