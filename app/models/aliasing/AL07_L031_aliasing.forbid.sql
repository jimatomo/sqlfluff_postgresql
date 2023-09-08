-- noqa: disable=LT09, CP01, ST06, AM05
-- sqlfluff:rules:aliasing.forbid:force_enable:True
SELECT
    COUNT(o.customer_id) as order_amount,
    c.name
FROM orders as o
JOIN customers as c on o.id = c.user_id
