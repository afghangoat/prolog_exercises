/*
If:| :-
*/

/* Knowledge base */

series(R1,R2,Re) :- Re is R1 + R2.
parallel(R1,R2,Re) :- Re is ((R1 * R2) / (R1 + R2)).

factorial(0, 1).
factorial(N, Res) :- N > 0, factorial(N-1, SubResult), Res is N * SubResult.

:- initialization(main).
main :-
    process,
    halt.

process :-
    parallel(10,40,R3),
    write(R3), nl.