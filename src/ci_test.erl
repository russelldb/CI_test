-module(ci_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-export([main/0]).

main() ->
    ok.

-ifdef(TEST).
simple_test() ->
    ?assert(true).

silly_test() ->
    ?assertEqual(true, self() == self()).

failing_test() ->
    ?assert(false).

-endif.
