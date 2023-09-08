SELECT
    COALESCE(foo, 0) AS bar_if_null,
    COALESCE(foo, 0) AS bar_nvl
FROM baz
