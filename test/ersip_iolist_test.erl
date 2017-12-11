%%
%% Copyright (c) 2017 Dmitry Poroh
%% All rights reserved.
%% Distributed under the terms of the MIT License. See the LICENSE file.
%%
%% iolist tests
%%

-module(ersip_iolist_test).

-include_lib("eunit/include/eunit.hrl").

trim_lws_test() ->
    ?assertEqual([], ersip_iolist:trim_head_lws([<<>>])),
    ?assertEqual([], ersip_iolist:trim_head_lws([])),
    ?assertEqual(<<>>, ersip_iolist:trim_head_lws(<<>>)),
    ?assertEqual("abc", ersip_iolist:trim_head_lws(" \tabc")),
    ?assertEqual("abc", ersip_iolist:trim_head_lws("\t abc")),
    ?assertEqual(<<"abc">>, ersip_iolist:trim_head_lws(<<" \tabc">>)),
    ?assertEqual(<<"abc">>, ersip_iolist:trim_head_lws(<<"\t abc">>)),
    ?assertEqual(["abc"], ersip_iolist:trim_head_lws([<<>>, "abc"])),
    ?assertEqual(["abc"], ersip_iolist:trim_head_lws([<<>>, " abc"])),
    ?assertEqual([<<"abc">>], ersip_iolist:trim_head_lws([<<" abc">>])),
    ?assertEqual([<<"abc">>], ersip_iolist:trim_head_lws(["", <<" abc">>])),
    ?assertEqual(["abc"], ersip_iolist:trim_head_lws([<<>>, " abc"])).

    
