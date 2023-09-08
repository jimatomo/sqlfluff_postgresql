SELECT
    CASE
        WHEN species = 'Cat' THEN 'Meow'
        ELSE
            CASE
                WHEN species = 'Dog' THEN 'Woof'
            END
    END AS sound
FROM mytable
