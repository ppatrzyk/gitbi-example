-- Mental issues vs having legal gun
select 
	prior_signs_mental_health_issues as mental,
	weapons_obtained_legally as legal_gun,
	count(*) as total,
from '../gitbi-example/us_mass_shootings.csv'
group by mental, legal_gun
having
	mental not null and 
	legal_gun not null;