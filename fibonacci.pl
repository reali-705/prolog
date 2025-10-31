/*
Primeira versão da regra (simples, mas ineficiente devido a cálculos repetidos)
    % fatos
    fibonacci(0, 0).
    fibonacci(1, 1).

    % regras
    fibonacci(N, F) :-
        N > 1,
        N1 is N - 1,
        N2 is N - 2,
        fibonacci(N1, F1),
        fibonacci(N2, F2),
        F is F1 + F2.
*/

% aperfeiçoando a regra para evitar cálculos repetidos
fibonacci(N, F) :-
    fibonacci_auxiliar(N, 0, 1, F).

fibonacci_auxiliar(0, Atual, _, Atual).
fibonacci_auxiliar(N, Atual, Proximo, Resultado) :-
    N > 0,
    N_novo is N - 1,
    Proximo_novo is Atual + Proximo,
    fibonacci_auxiliar(N_novo, Proximo, Proximo_novo, Resultado).

