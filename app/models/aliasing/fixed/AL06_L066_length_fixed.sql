-- noqa: disable=LT09, CP01
-- sqlfluff:rules:aliasing.length:min_alias_length:2
SELECT
    SUM(orders.amount) as order_amount
FROM orders
