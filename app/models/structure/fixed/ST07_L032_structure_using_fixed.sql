SELECT
    table_a.field_1,
    table_b.field_2
FROM
    table_a
INNER JOIN table_b ON table_a.id = table_b.id
