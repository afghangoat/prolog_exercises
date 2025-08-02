/*
If:| :-
*/

/* Knowledge base */

gt(X,Y) :- X < Y,write('X is smaller').

gte(X,Y) :- X =:= Y, write('X and Y are same').
gte(X,Y) :- X < Y, write('X is smaller').

:- initialization(main).
main :-
    process,
    halt.

process :-
    gte(10,100), nl.