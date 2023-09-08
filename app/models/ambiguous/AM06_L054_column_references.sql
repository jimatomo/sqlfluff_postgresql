SELECT
    foo,
    bar,
    sum(baz) AS sum_value
FROM fake_table
GROUP BY
    foo, 2;
