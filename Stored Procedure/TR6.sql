CREATE PROCEDURE TR6 
AS
BEGIN TRY
	BEGIN TRANSACTION;
		-- CHECK CONSTRINT EN USUARIOS
		ALTER TABLE practica1.Usuarios
		ADD CONSTRAINT CHK_Usuarios_Firstname 
		CHECK (PATINDEX('%[0-9]%', Firstname) = 0);

		ALTER TABLE practica1.Usuarios
		ADD CONSTRAINT CHK_Usuarios_Lastname 
		CHECK (PATINDEX('%[0-9]%', Lastname) = 0);

		-- CHECK CONSTRAINT EN COURSE
		ALTER TABLE practica1.Course
		ADD CONSTRAINT CHK_Course_Name 
		CHECK (PATINDEX('%[0-9]%', Name) = 0);

		ALTER TABLE practica1.Course
		ADD CONSTRAINT CHK_Course_Credits
		CHECK (CreditsRequired > 0);
	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
END CATCH
GO