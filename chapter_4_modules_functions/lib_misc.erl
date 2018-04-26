-module (lib_misc).
-export ([for/3, pythag/1, my_tuple_to_list/1]).

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I+1, Max, F)].

pythag(N) ->
  [ {A, B, C} || A <- lists:seq(1, N),
                 B <- lists:seq(1, N),
                 C <- lists:seq(1, N),
                 A+B+C =< N,
                 A*A + B*B =:= C*C
  ].

my_tuple_to_list(Tuple) ->
  Size = size(Tuple),
  my_tuple_to_list2(Tuple, Size, 1).

my_tuple_to_list2(Tuple, Size, Size) ->
  [element(Size, Tuple)];

my_tuple_to_list2(Tuple, Size, Counter) ->
  [element(Counter, Tuple) | my_tuple_to_list2(Tuple, Size, Counter+1)].
