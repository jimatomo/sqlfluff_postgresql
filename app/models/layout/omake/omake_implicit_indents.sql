-- デフォルトでは許されないこの書き方だけど、.sqlfluffファイルで以下の設定を変更すると許されるようになる
/*
[sqlfluff:indentation]
allow_implicit_indents = True
*/
SELECT *  --noqa: AM04
FROM my_table
WHERE condition_a
    AND condition_b
