-- noqa: disable=LT09, CP01
-- sqlfluff:rules:aliasing.length:min_alias_length:2
SELECT
    SUM(o.amount) as order_amount
FROM orders as o
