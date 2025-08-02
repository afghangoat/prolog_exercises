/*
Facts style:

-Names of properties/relationships begin with lower case letters.

-The relationship name appears as the first term.

-Objects appear as comma-separated arguments within parentheses.

-A period "." must end a fact.

-Objects also begin with lower case letters. They also can begin with digits (like 1234), and can be strings of characters enclosed in quotes e.g. color(pink, red).

*/

/* Knowledge base */

male(tom).
male(bob).
female(alice).

father(tom, bob).
parent(bob, alice).

grandfather(X, Y) :- father(X, Z), parent(Z, Y).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
haschild(X):- parent(X,_).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
child_of(X,Y) :- father(X,Y);mother(X,Y).

:- initialization(main).
main :-
    process,
    halt.

process :-
    grandfather(tom, Y),
    write('Tom is grandfather to '), write(Y), write('.'), nl.