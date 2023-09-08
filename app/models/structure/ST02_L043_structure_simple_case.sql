WITH

foo_1 AS (
    SELECT
        *,
        CASE
            WHEN fab > 0 THEN true
            ELSE false
        END AS is_fab
    FROM fancy_table
),

foo_2 AS (
    SELECT
        *,
        CASE
            WHEN fab IS NULL THEN 0
            ELSE fab
        END AS fab_clean
    FROM foo_1
)

SELECT
    fab,
    is_fab,
    fab_clean,
    CASE
        WHEN fab IS NULL THEN null
        ELSE fab
    END AS fab_clean_null
FROM foo_2
