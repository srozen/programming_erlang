-module (shop2).
-export ([total/1, total_comp/1]).
-import (lists, [map/2, sum/1]).

% « Buy = [{oranges,4}, {newspaper,1}, {apples,10}, {pears,6}, {milk,3}].​ »


total(L) ->
  sum(map(fun({What, N}) -> shop:cost(What) * N end, L)).

total_comp(L) ->
  sum([shop:cost(Item) * Price || {Item, Price} <- L]).
