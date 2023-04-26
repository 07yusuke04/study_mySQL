SELECT 
    *
FROM
    world.city
        LEFT JOIN
			world.country ON city.CountryCode = country.Code
        LEFT JOIN
			world.countrylanguage ON city.CountryCode = countrylanguage.CountryCode
;
    