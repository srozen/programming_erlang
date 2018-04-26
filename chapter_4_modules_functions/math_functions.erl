-module (math_functions).
-export ([even/1, odd/1, filter/2]).

even(X) ->
  if
    is_integer(X), (X rem 2) =:= 0 ->
      true;
    true -> false
  end.

odd(X) ->
  if
    is_integer(X), (X rem 2) =:= 1 ->
      true;
    true -> false
  end.

filter(F, [H|T]) ->
  case F(H) of
    true -> [H | filter(F, T)];
    false -> filter(F,T)
  end;

filter(_, []) -> [].
