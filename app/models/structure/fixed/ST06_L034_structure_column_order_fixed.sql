--noqa: disable=AM04
select
    *,
    a,
    b,
    row_number() over (partition by id order by date) as y
from x
