% Questão 1:
% fatos
% animal\1
animal(urso).
animal(peixeGrande).
animal(peixePequeno).
animal(cervo).
animal(guaxinim).
animal(raposa).
animal(coelho).
animal(lince).
% vegetal\1
vegetal(alga).
% come\2
come(urso, peixeGrande).
come(urso, peixePqueno).
come(urso, cervo).
come(urso, guaxinim).
come(urso, coelho).
come(peixeGrande, peixePequeno).
come(peixePequeno, alga).
come(cervo, alga).
come(guaxinim, peixeGrande).
come(guaxinim, peixePequeno).
come(guaxinim, alga).
come(raposa, peixeGrande).
come(raposa, peixePequeno).
come(raposa, coelho).
come(raposa, alga).
come(coelho, alga).
come(lince, coelho).


% Questão 2:
/*
Fatos são o conjuntos de verdades absolutas que serão usadas de base para a lógica.
Regras o conjunto de combinações de fatos com operadores lógicos (And, Or, Not etc).
*/

% Questão 3:
% fatos
aluno(pedro, prog).
aluno(pedro, calculo).
aluno(pedro, ihc).
aluno(maria, prog).
aluno(maria, so).
aluno(jose, calculo).
aluno(jose, ihc).
professor(renato, prog).
professor(valcir, calculo).
professor(marceli, ihc).

% regras
turma(Professor, Aluno) :- professor(Professor, Materia), aluno(Aluno, Materia).