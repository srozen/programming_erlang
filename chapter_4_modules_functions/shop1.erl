-module (shop1).
-export ([total/1]).

total([{What, N} | Tail]) ->
  shop:cost(What) * N) + total(T);
total([]) -> 0.
