SELECT person.address,
	ROUND(ROUND(MAX(age), 2) - (ROUND(MIN(age), 2) / ROUND(MAX(age), 2)), 2) AS formula,
	ROUND(AVG(age), 2) AS average,
	CASE
		WHEN ROUND(ROUND(MAX(age), 2) - (ROUND(MIN(age), 2) / ROUND(MAX(age), 2)), 2) > ROUND(AVG(age), 2) THEN 'true'
		ELSE 'false'
	END
	AS comparison
FROM person
GROUP BY person.address
ORDER BY person.address;