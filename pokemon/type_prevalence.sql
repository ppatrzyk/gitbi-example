-- Pokemon types
select
    type1,
    type2,
    count(*) as count,
    sum(count(*)) OVER (PARTITION BY type1) as type1_total,
    sum(count(*)) OVER (PARTITION BY type2) as type2_total
from pokemons
group by type1, type2
order by type1, type2 desc;
