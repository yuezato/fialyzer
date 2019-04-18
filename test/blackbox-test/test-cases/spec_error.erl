-module(spec_error).

-export([foo/1, int1/0, int2/0, int3/0, bar/2]).


-spec foo(number()) -> boolean().
foo(111) -> ok.

-spec int1() -> non_neg_integer().
int1() -> ok.

-spec int2() -> pos_integer().
int2() -> ok.

-spec int3() -> neg_integer().
int3() -> ok.

-spec int4() -> integer().
int4() -> ok.

-spec list1() -> [] | nil().
list1() -> ok.

-spec list2() -> list().
list2() -> ok.

-spec list3() -> list(atom()).
list3() -> ok.

-spec list4() -> nonempty_list(atom()).
list4() -> ok.

-spec list5() -> maybe_improper_list(atom(), number()).
list5() -> ok.

-spec string1() -> string().
string1() -> ok.

-spec string2() -> nonempty_string().
string2() -> ok.

-spec bar(boolean(), number()) -> ok.
bar(M, N) ->
    _ = M + N,
    ok.
