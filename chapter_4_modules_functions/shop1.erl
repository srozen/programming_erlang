-module (shop1).
-export ([total/1]).

% « Buy = [{oranges,4}, {newspaper,1}, {apples,10}, {pears,6}, {milk,3}].​ »
total(ShoppingList) ->
   total(ShoppingList, 0).

total([{What, Number} | Tail], Accumulator) ->
  total(Tail, Accumulator + (shop:cost(What) * Number));

total([], Accumulator) ->
  Accumulator.
