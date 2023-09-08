--noqa: disable=ST06,AL03
--sqlfluff:rules:convention.casting_style:preferred_type_casting_style:cast
SELECT
    CONVERT(int, 1) AS bar,
    100::int::text,
    CAST(10 AS text) AS coo
FROM foo
