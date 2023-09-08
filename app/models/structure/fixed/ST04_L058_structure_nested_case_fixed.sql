SELECT
    CASE
        WHEN species = 'Cat' THEN 'Meow'
        WHEN species = 'Dog' THEN 'Woof'
    END AS sound
FROM mytable
