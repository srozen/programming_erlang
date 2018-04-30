-module (bitop).
-export ([reverse/1]).

reverse(Bin) ->
  list_to_binary(lists:reverse(binary_to_list(Bin))).
