--noqa: disable=ST07,RF01
select
    a.x,
    a.y,
    b.z
from a
inner join (
    select
        x,
        z
    from b
) using (x)
