judge(_, Expected, Expected) :-
  format("\x1b\[1m\x1b\[32m.\x1b\[0m", []),
  !.
judge(Input, Expected, Actual) :-
  format("~n\x1b\[1m\x1b\[31minput:    ~s~nexpected: ~s~nactual:   ~s\x1b\[0m~n",
    [Input, Expected, Actual]
  ),
  !.

test(Solver, Input, Expected) :-
  call(Solver, Input, Actual),
  judge(Input, Actual, Expected),
  !.
