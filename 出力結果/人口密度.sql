SELECT 
	distinct co.name AS "国名",
	count(cy.Name) AS "地域数",
	co.SurfaceArea AS "表面積",
    co.Population AS "人口",
    co.Population/co.SurfaceArea AS "人口密度",
	Count(cl.Language) AS "言語数"
FROM
    world.city AS cy
        LEFT JOIN
			world.country AS co ON cy.CountryCode = co.Code
        LEFT JOIN
			world.countrylanguage AS cl ON cy.CountryCode = cl.CountryCode
group by
	co.name,
    cy.name
order by
	co.Population/co.SurfaceArea DESC
;