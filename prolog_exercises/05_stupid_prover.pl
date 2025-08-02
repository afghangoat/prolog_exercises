/* TODO: Make a masterpiece. */

/*
Proof that I can't get a girlfriend.
*/

/* Knowledge base */

% Traits

has_degree(me).
does_not_drink_energy_drink(me).
does_not_smoke(me).
does_not_drink_alcohol(me).
knows_prolog(me).
has_passive_income(me).
has_side_hustle(me).
short(me).
draws(me).
makes_poetry(me).
strategic_thinker(me).
enduring(me).
has_startup(me).
goes_to_gym(me).

% Girls won't like these...

red_flag(knows_prolog).
red_flag(short).

% Any red flag is a rejection. Green flags don't matter.

rejected_if(X) :-
  red_flag(Flag),
  call(Flag, X),
  format("Reason: ~w is a red flag.~n", [Flag]).

can_date(X) :-
  rejected_if(X),
  format("Conclusion: ~w is not dateable.~n", [X]).

:- initialization(main).
main :-
  process,
  halt.

process :-
  write('Final judgement for "me":'), nl,
  can_date(me),
  nl.