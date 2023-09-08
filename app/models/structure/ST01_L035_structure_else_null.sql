select
    case
        when name like '%cat%' then 'meow'
        when name like '%dog%' then 'woof'
        else null
    end
from x
