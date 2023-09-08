--noqa: disable=ST07,RF01
with prep_1 as (
    select
        x,
        z
    from b
)

select
    a.x,
    a.y,
    b.z
from a
inner join prep_1 using (x)
