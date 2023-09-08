select
    foo.a,
    foo.b,
    bar.c
from foo
left join bar
    -- This subcondition does not list
    -- the table referenced earlier first:
    on bar.a = foo.a
    -- Neither does this subcondition:
    and bar.b = foo.b
