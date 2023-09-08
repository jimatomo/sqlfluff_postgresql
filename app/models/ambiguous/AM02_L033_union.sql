--noqa: disable=LT09
SELECT a, b FROM table_1
UNION
SELECT a, b FROM table_2

-- なぜかLINTが効かない
