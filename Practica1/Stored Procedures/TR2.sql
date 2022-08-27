------------------------------------------------------------
------------------------------------------------------------
--------------------CAMBIO DE ROLES-------------------------
DROP PROCEDURE IF EXISTS practica1.TR2;
GO
CREATE PROCEDURE TR2 (
	@CodCourse INT,
	@Email VARCHAR(MAX)
) 
AS
BEGIN TRY
	BEGIN TRANSACTION;
		DECLARE @IDUser UNIQUEIDENTIFIER
		DECLARE @IDTutor UNIQUEIDENTIFIER
		DECLARE @IDRol UNIQUEIDENTIFIER
		DECLARE @Message VARCHAR(MAX)
		DECLARE @CourseName VARCHAR(MAX)

		IF (SELECT COUNT(*) FROM practica1.Roles
				WHERE RoleName='Tutor') = 1
			SET @IDRol = (SELECT Id FROM practica1.Roles
                            WHERE RoleName='Tutor');
		ELSE
		BEGIN
			PRINT 'No existe el rol Tutor aun.';
			RETURN
		END

		IF (SELECT COUNT(*)
				FROM practica1.Usuarios
				WHERE [Email] = @Email) = 1
		BEGIN
			SET @IDUser = (SELECT Id FROM practica1.Usuarios
                            WHERE Email=@Email);
		
			IF (SELECT [EmailConfirmed] 
					FROM practica1.Usuarios
					WHERE [Email] = @Email) = 1
			BEGIN
				PRINT 'Usuario activo, correo confirmado.';
				-- IF (SELECT COUNT(*) FROM practica1.UsuarioRole
				-- 		WHERE practica1.UsuarioRole.UserId = @IDUser) > 1
				-- 	PRINT 'Parece que el usuario actual ya tiene mas de un rol.'
				-- ELSE
                -- BEGIN
				IF (SELECT [CodCourse] FROM practica1.Course
						WHERE [CodCourse] = @CodCourse) = @CodCourse
				BEGIN
					PRINT 'Curso encontrado'
					SET @CourseName = (SELECT [Name] FROM practica1.Course
						WHERE [CodCourse] = @CodCourse)
					IF (SELECT COUNT(*) FROM practica1.CourseTutor
							WHERE practica1.CourseTutor.CourseCodCourse = @CodCourse) >= 1
						PRINT 'El curso ingresado ya tiene un tutor asignado.'
					ELSE
					BEGIN
						IF (SELECT COUNT(*) FROM practica1.CourseTutor
								WHERE practica1.CourseTutor.TutorId = @IDUser
								AND practica1.CourseTutor.CourseCodCourse = @CodCourse) >= 1
							PRINT 'El tutor ya tiene a su cargo el curso ingresado.'
						ELSE
						BEGIN
							IF (SELECT COUNT(*) FROM practica1.CourseAssignment
									WHERE practica1.CourseAssignment.CourseCodCourse = @CodCourse) >= 1
									PRINT 'No puede ser auxiliar de un curso que esta cursando actualmente.'
							ELSE
							BEGIN
								INSERT INTO practica1.TutorProfile VALUES (@IDUser, NEWID())
								PRINT 'TutorProfile inserted'
								--SELECT TutorCode FROM practica1.TutorProfile
								--	WHERE UserId=@IDUser
								SET @IDTutor = (SELECT TutorCode FROM practica1.TutorProfile
															WHERE UserId=@IDUser);
								INSERT INTO practica1.CourseTutor VALUES (@IDUser, @CodCourse);
								PRINT 'CourseTutor inserted'
								INSERT INTO practica1.UsuarioRole VALUES (@IDRol, @IDUser, 1);
								PRINT 'UsuarioRole inserted'
								SET @Message = 'Tu perfil de tutor ha sido activado correctamente y se te ha sido asignado el curso: '
								SET @Message += @CourseName
								SET @Message += '.'
								PRINT @Message
								INSERT INTO practica1.Notification VALUES (@IDUser, @Message, GETDATE());
								PRINT 'Se ha agregado el rol del usuario tutor y se ha asignado el curso correspondiente.';
							END
						END
					END
				END
				ELSE
					PRINT 'No existe ningun curso con el código ingresado. ¿Ya se creo el curso?'
                -- END
			END
			ELSE
				PRINT 'El usuario no esta activo, correo no confirmado.'
		END
		ELSE
			PRINT 'No existe ningun usuario asociado al email ingresado. ¿Ya se registro el usuario?'
	COMMIT TRANSACTION
		PRINT 'Roles cambiados? :v';
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	PRINT 'No se pudieron cambiar los roles :,v';
END CATCH;
-- Test
GO
EXEC TR2 772,'espinoza@gmail.com';
--INSERT INTO practica1.CourseTutor VALUES ('1DA6A4B0-656C-470F-A0C8-E3A7662241B3', 970)
GO
SELECT * FROM practica1.TutorProfile;
SELECT * FROM practica1.CourseTutor;
SELECT * FROM practica1.Notification;
-- Delete SP
DROP PROCEDURE TR2;
GO
-- Activating account
UPDATE practica1.Usuarios
SET EmailConfirmed = 1
WHERE Email = 'espinoza@gmail.com';