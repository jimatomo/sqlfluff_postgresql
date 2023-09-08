-- うまく動かない…
-- sqlfluff:rules:convention.quoted_literals:force_enable:True
--noqa: disable=AL02,AL03,RF05,LT01,PRS,LXR
select
    "abc",
    'abc',
    "\"",
    "abc" = 'abc'
from foo
