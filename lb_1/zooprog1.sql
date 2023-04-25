CREATE FUNCTION udf_GetVolunteersCountFromADepartment
(
    @VolunteersDepartment NVARCHAR(50)
)
RETURNS INT
AS
BEGIN
    DECLARE @VolunteerCount INT;
    SELECT @VolunteerCount = COUNT(*) 
    FROM Volunteers 
    WHERE DepartmentId = @VolunteersDepartment;
    RETURN @VolunteerCount;
END;
