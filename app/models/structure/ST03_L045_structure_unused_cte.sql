WITH cte1 AS (
    SELECT a
    FROM t
),

cte2 AS (
    SELECT b
    FROM u
)

SELECT *
FROM cte1
