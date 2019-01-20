judge(_, Expected, Expected) :-
  format("\x1b\[1m\x1b\[32m~s\x1b\[0m~n", ["passed"]),
  !.
judge(Input, Expected, Actual) :-
  format("\x1b\[1m\x1b\[31m~s\x1b\[0m  input: ~s, expected: ~s, actual: ~s~n", ["failed", Input, Expected, Actual]).

test(Input, Expected) :-
  solve(Input, Actual),
  judge(Input, Expected, Actual).
