-module (list_ex).
-export ([sum_list/1]).

sum_list(List) ->
  sum_list(List, 0).

sum_list([Head|Tail], Accumulator) ->
  sum_list(Tail, Accumulator+Head);

sum_list([], Accumulator) ->
  Accumulator.
