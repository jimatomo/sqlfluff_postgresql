--noqa: disable=ST06,AL03
--sqlfluff:rules:convention.casting_style:preferred_type_casting_style:cast
SELECT
    CAST(1 AS int) AS bar,
    CAST(CAST(100 AS int) AS text),
    CAST(10 AS text) AS coo
FROM foo
