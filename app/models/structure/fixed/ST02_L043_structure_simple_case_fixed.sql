WITH

foo_1 AS (
    SELECT
        *,
        COALESCE(fab > 0, FALSE) AS is_fab
    FROM fancy_table
),

foo_2 AS (
    SELECT
        *,
        COALESCE(fab, 0) AS fab_clean
    FROM foo_1
)

SELECT
    fab,
    is_fab,
    fab_clean,
    fab AS fab_clean_null
FROM foo_2
