SELECT v.Name AS VolunteerName, v.PhoneNumber, v.Address, a.Id AS AnimalId, vd.Id AS DepartmentId
FROM Volunteers v
JOIN Animals a ON v.Id = a.OwnerId
JOIN VolunteersDepartments vd ON v.DepartmentId = vd.Id
ORDER BY v.Name ASC, a.Id ASC, vd.Id ASC;
