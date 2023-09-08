--noqa: disable=LT09
WITH cte AS (
    SELECT a, b FROM foo
)

SELECT * FROM cte
UNION
SELECT a, b FROM t
