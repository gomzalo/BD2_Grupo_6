CREATE PROCEDURE TR3 (
	@Email NVARCHAR(MAX),
	@CodCourse INT
) AS
BEGIN TRY
	BEGIN TRANSACTION;
		DECLARE @IdStudent UNIQUEIDENTIFIER
		DECLARE @CreditsStudent INT
		DECLARE @CreditsCourse INT
		DECLARE @StatusStudent BIT
		DECLARE @IdTutor UNIQUEIDENTIFIER
		DECLARE @nameCourse NVARCHAR(MAX)

		IF (SELECT COUNT(*) FROM practica1.Usuarios WHERE EmailConfirmed = 1) = 0
		BEGIN
			SET @IdStudent = (SELECT Id
								FROM practica1.Usuarios u
								WHERE u.Email = @Email);

			SET @CreditsStudent = (SELECT p.Credits
									FROM practica1.Usuarios u
									INNER JOIN practica1.ProfileStudent p
										ON u.Id = p.UserId
									WHERE u.Id = @IdStudent);

			SET @idTutor = (SELECT TutorId 
							FROM practica1.CourseTutor 
							WHERE CourseCodCourse = @CodCourse);
			SET @creditsStudent = (SELECT Credits 
									FROM practica1.ProfileStudent 
									WHERE UserId = @IdStudent);
			SET @creditsCourse = (SELECT CreditsRequired 
									FROM practica1.Course 
									WHERE CodCourse = @CodCourse);
			SET @nameCourse = (SELECT Name 
								FROM practica1.Course 
								WHERE CodCourse = @CodCourse);

			IF @creditsStudent >= @creditsCourse
			BEGIN
				INSERT INTO practica1.CourseAssignment VALUES (@idStudent, @CodCourse);
				INSERT INTO practica1.Notification VALUES (@idStudent, CONCAT('Asignado a ', @nameCourse), GETDATE());
				INSERT INTO practica1.Notification VALUES (@idTutor, CONCAT('Estudiante asignado a ', @nameCourse), GETDATE());
			END
		END;
	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
END CATCH;
GO