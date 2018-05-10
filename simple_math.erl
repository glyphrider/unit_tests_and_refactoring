-module(simple_math).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-export([add/2]).

add(A,B) ->
  A+B.

-ifdef(EUNIT).

add_test() ->
  4 = add(2,2).

-endif.
