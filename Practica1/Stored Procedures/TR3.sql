-- Asignar curso
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

		IF (SELECT COUNT(*) FROM practica1.Usuarios WHERE Email = @Email AND EmailConfirmed = 1) = 1
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
				IF (SELECT COUNT(*) FROM practica1.CourseAssignment WHERE StudentId <> @IdStudent AND CourseCodCourse <> @CodCourse) = 0
				BEGIN
					INSERT INTO practica1.CourseAssignment VALUES (@idStudent, @CodCourse);
					INSERT INTO practica1.Notification VALUES (@idStudent, CONCAT(@Email, 'Asignado a ', @nameCourse), GETDATE());
					INSERT INTO practica1.Notification VALUES (@idTutor, CONCAT('Estudiante asignado a ', @nameCourse), GETDATE());
				END;
			END;
			ELSE
			BEGIN
				INSERT INTO practica1.HistoryLog 
				VALUES (GETDATE(), CONCAT(@Email, ' no cuenta con los creditos suficientes para ', @CodCourse));
			END;
		END;
		ELSE
		BEGIN
			INSERT INTO practica1.HistoryLog 
			VALUES(GETDATE(), CONCAT(@Email, ' no tiene un correo confirmado'));
		END;
	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	-- INSERT INTO practica1.HistoryLog
	-- VALUES (GETDATE(), CONCAT('Rollback en asignacion de curso ', @CodCourse, ' para ', @Email));
	ROLLBACK TRANSACTION;
END CATCH;
GO