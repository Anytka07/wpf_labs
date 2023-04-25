CREATE PROCEDURE usp_AnimalsWithOwnersOrNot
    @AnimalName VARCHAR(50)
AS
BEGIN
    SELECT 
        COALESCE(o.Name, '�� �����������') AS "OwnerName"
    FROM 
        Animals a
        LEFT JOIN Owners o ON a.OwnerId = o.Id
    WHERE 
        a.Name = @AnimalName
END
