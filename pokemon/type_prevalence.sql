-- Pokemon types
select
    type1,
    count(*) as count
from pokemons
group by type1
order by count desc;
