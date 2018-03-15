-module (shop2).
-export ([total/1]).
-import (mylists, [map/2, sum/1]).

total(L) -> sum([shop:cost(A) * B || {A, B} <- L]).
