-module (parserj).
-export ([readjson/1]).

readjson(Filename) ->
  Full = filename:join(".", Filename),
  {_, Content} = file:read_file(Full),
  jsx:decode(Content).
  %Map = maps:from_json(Content),
  %#{height := Height, width := Width, brand := Brand} = Map,
  %{Height, Width, Brand}.
