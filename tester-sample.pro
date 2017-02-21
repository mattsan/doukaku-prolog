% $ gplc tester-sample.pro
% $ ./tester-sample

:- initialization(main).
:- include('utils/tester').

solve(Input, Input).

test(Input, Expected) :-
  test(solve, Input, Expected).

main :-
  test("123", "123"),
  test("123", "456"),
  halt.
