-module (tuplex_ex).
-export ([foo/0]).

foo() ->
  Point = {point, 1, 3},
  {point, X, Y} = Point,
  {X, Y}.
