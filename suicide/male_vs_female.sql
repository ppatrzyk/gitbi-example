-- places with biggest difference in male vs female suicide rate
create temp table males as
    select
        country,
        year,
        age,
        suicides_per100k as male_rate
    from suicides
    where sex = 'male';

create temp table females as
    select
        country,
        year,
        age,
        suicides_per100k as female_rate
    from suicides
    where sex = 'female';

select 
    m.country,
    m.year,
    m.age,
    m.male_rate,
    f.female_rate,
    round(m.male_rate / f.female_rate, 2) as male_to_female_ratio
from males m
inner join females f
on 
    m.country = f.country and
    m.year = f.year and
    m.age = f.age
order by male_to_female_ratio desc
limit 50;
