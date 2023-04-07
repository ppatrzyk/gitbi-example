select country, year, sex, suicides_per100k from suicides
where
	age = '15-24' and
	country = 'Japan'
order by year;