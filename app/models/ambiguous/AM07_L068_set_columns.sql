WITH cte AS (
    SELECT
        a,
        b
    FROM foo
)

SELECT * FROM cte
UNION
SELECT
    c,
    d,
    e
FROM t
