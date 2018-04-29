-module (mapp).
-export ([map_search_pred/2, srch/3]).

map_search_pred(Map, Pred) ->
  Keys = maps:keys(Map),
  srch(Keys, Pred, Map).

srch([], _, _) -> null;
srch([H|T], Pred, Map) ->
  case Pred(H) of
    true -> maps:find(H, Map);
    false -> srch(T, Pred, Map)
  end.
