--noqa: disable=AM04
select
    a,
    *,
    row_number() over (partition by id order by date) as y,
    b
from x
