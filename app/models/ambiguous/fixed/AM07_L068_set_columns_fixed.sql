--noqa: disable=LT09
WITH cte AS (
    SELECT a, b FROM foo
)

SELECT
    a,
    b
FROM cte
UNION
SELECT
    c,
    d
FROM t
