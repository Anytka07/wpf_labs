SELECT Name, YEAR(Birthdate) AS BirthYear, AnimalTypes.AnimalType AS Type
FROM Animals
JOIN AnimalTypes ON Animals.AnimalTypeId = AnimalTypes.Id
WHERE OwnerId IS NULL
AND Birthdate > DATEADD(year, -5, '2022-01-01')
AND AnimalTypes.AnimalType != 'Birds'
ORDER BY Name ASC;
