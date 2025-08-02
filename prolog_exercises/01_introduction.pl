/*Knowledge base:
-Given
-Can be used

Facts:
-Something is X

Rules:
-Anything X is Y if X is Z

Queries:
-X is W or not?
*/

/*
Syntax:

if | :-
and | ,
or | ;
not | not

Variables:
-Can start with capital letter or _

Fact:
- <quality>(<entity>).
- example: friends(alice,bob).

Rule: THERE EXISTS A
friendship(X,Y) :-
likes(X,Y);
likes(Y,X).

Query:
?- <query>(arg1,arg2,...argn).

So likes(dan,sally) would be friendship

*/

main:-
        process,
        halt.

process:-
        write('Hello World').
:- main.