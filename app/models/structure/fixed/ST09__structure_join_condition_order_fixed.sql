--sqlfluff:rules:structure.join_condition_order:preferred_first_table_in_join_clause:earlier
select
    foo.a,
    foo.b,
    bar.c
from foo
left join bar
    on
        foo.a = bar.a
        and foo.b = bar.b
