SELECT
    ifnull(foo, 0) AS bar_if_null,
    nvl(foo, 0) AS bar_nvl
FROM baz
