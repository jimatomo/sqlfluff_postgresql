-- デフォルトでは許されないこの書き方だけど、.sqlfluffファイルで以下の設定を変更すると許されるようになる
/*
[sqlfluff:indentation]
template_blocks_indent = False
*/
SELECT
    a,
    {% for n in ['b', 'c', 'd'] %}
    -- This section is indented relative to 'a' because
    -- it is inside a jinja for loop.
    {{ n }},
    {% endfor %}
    e
FROM my_table
