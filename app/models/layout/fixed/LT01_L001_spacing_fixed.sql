--noqa: disable=RF02,LT09,ST07
SELECT
    a, b(c) AS d
FROM foo
INNER JOIN bar USING (a)
