SELECT TOP (5) o.Name AS OwnerName, COUNT(a.Id) AS AnimalCount
FROM Owners o
LEFT JOIN Animals a ON o.Id = a.OwnerId
GROUP BY o.Id, o.Name
ORDER BY COUNT(a.Id) DESC, o.Name ASC

