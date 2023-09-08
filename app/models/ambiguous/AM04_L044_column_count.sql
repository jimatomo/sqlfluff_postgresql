--noqa: disable=LT09
WITH cte AS (
    SELECT * FROM foo
)

SELECT * FROM cte
UNION
SELECT a, b FROM t
