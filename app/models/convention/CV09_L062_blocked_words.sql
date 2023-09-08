-- sqlfluff:rules:convention.blocked_words:blocked_words:deprecated_table,int
SELECT foo::int FROM deprecated_table WHERE 1 = 1
