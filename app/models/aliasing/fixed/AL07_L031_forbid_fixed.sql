-- noqa: disable=LT09, CP01, ST06, AM05
-- sqlfluff:rules:aliasing.forbid:force_enable:True
SELECT
    COUNT(orders.customer_id) as order_amount,
    customers.name
FROM orders
JOIN customers on orders.id = customers.user_id
