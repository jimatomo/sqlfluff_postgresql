WITH

final AS (
    SELECT
        a AS a_alias,
        b
    FROM
        foo
)

SELECT * FROM final
