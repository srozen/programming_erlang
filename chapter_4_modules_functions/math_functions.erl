-module (math_functions).
-export ([even/1, odd/1, filter/2, split/1, split2/1]).

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

split(L) ->
  Odds = [X || X <- L, (X rem 2) =:= 1],
  Even = [X || X <- L, (X rem 2) =:= 0],
  {Odds, Even}.

split2(L) ->
  split_acc(L, [], []).

split_acc([H|T], Odds, Even) ->
  case (H rem 2) of
    0 -> split_acc(T, Odds, [H|Even]);
    1 -> split_acc(T, [H|Odds], Even)
  end;

split_acc([], Odds, Even) ->
  {lists:reverse(Odds), lists:reverse(Even)}.
