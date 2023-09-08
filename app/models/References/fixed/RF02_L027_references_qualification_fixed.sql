SELECT
    foo.a,
    vee.b
FROM
    foo
LEFT JOIN vee
    ON foo.a = vee.a
