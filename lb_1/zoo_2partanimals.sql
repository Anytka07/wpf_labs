SELECT a.Name AS AnimalName, at.AnimalType AS AnimalType, CONVERT(VARCHAR(10), a.BirthDate, 104) AS BirthDate
FROM Animals a
JOIN AnimalTypes at ON a.AnimalTypeId = at.Id
ORDER BY a.Name ASC;
