-- countries with highest suicide rates among old men
select
    country,
    suicides_per100k
from suicides 
where
    year = 2010 and
    sex = 'male' and
    age = '75+'
order by suicides_per100k desc;