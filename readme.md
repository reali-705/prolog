# Repositório de Programação em Lógica

Este repositório armazena os exercícios e projetos desenvolvidos na disciplina de Programação em Lógica, do curso de Ciência da Computação. O objetivo é registrar a evolução e a implementação de bases de conhecimento e regras lógicas usando a linguagem Prolog.

## 🤖 Tecnologias Utilizadas

- **Linguagem:** [Prolog](https://www.swi-prolog.org/) (utilizando a implementação **SWI-Prolog**)

## 🗂️ Conteúdo

Atualmente, o repositório contém os seguintes arquivos:

### 1. [`familia.pl`](./familia.pl)

Primeiro contato com Prolog. Uma base de conhecimento que modela uma árvore genealógica, definindo fatos sobre indivíduos e implementando regras para inferir parentescos.

### 2. [`atividade1.pl`](./atividade1.pl)

Atividade em sala para criação de regras, abordando uma cadeia alimentar e a relação entre alunos e professores em disciplinas.

### 3. [`fibonacci.pl`](./fibonacci.pl)

Atividade de introdução à recursividade em Prolog, com uma implementação otimizada para calcular a sequência de Fibonacci.

---

## 🚀 Como Usar

1.  Certifique-se de ter o [SWI-Prolog](https://www.swi-prolog.org/download/stable) instalado em sua máquina.
2.  Clone este repositório para o seu computador.
3.  Navegue até a pasta do projeto e inicie o interpretador SWI-Prolog:
    ```bash
    swipl
    ```
4.  Dentro do interpretador, carregue (consulte) a base de conhecimento:
    ```prolog
    ?- consult('nome_do_arquivo.pl').
    true.
    ```
5.  Pronto! Agora você pode fazer consultas à base de conhecimento.
