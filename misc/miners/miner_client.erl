-module (miner_client).
-export ([start/1, loop/1]).
-define(TIMEOUT, 2000). % One minute

start(Tokens) -> spawn(miner_client, loop, [Tokens]).

loop(Tokens) ->
  receive
    {_ , consume} ->
      io:format("Tokens: ~p.~n", [Tokens-1]),
      loop(Tokens-1)
    after ?TIMEOUT ->
      io:fwrite("Updated Tokens!~n", []),
      loop(Tokens+1)
  end,
  loop(Tokens).
