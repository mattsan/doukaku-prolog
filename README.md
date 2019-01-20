# Utilities for writing DOUKAKU in Prolog

## usage

Clone this repository to your working directory.

```
$ git clone git@github.com:mattsan/doukaku-prolog.git
```

Or, add to your repository as submodule.

```
$ git submodule add git@github.com:mattsan/doukaku-prolog.git
```

Include files under doukaku-prolog to your Prolog code.

```prolog
% sample.prolog
:- initialization(main).
:- include('doukaku-prolog/testcase.prolog').

solve(Input, Input).

main :-
  test("ABC", "ABC"),
  test("abc", "ABC").
```

Compile and run it.

```
# GNU-Prolog compiler
$ gplc --no-top-level sample.prolog
$ ./sample
failed  input: abc, expected: ABC, actual: abc
passed
```
