-module (mylists).
-export ([sum/1, map/2]).

sum(List) ->
  sum(List, 0).

sum([Head|Tail], Accumulator) ->
  sum(Tail, Accumulator+Head);

sum([], Accumulator) ->
  Accumulator.

map([], _) -> [];
map([Head|Tail], F) -> [F(Head) | map(Tail, F)].
