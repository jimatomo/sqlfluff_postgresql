--noqa: disable=ST09
SELECT
    foo.col1,
    bar.col2
FROM bar
LEFT JOIN foo
    ON foo.bar_id = bar.id
