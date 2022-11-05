use BD2;

-----------------------------------------------------------
-----------------------------------------------------------
-----------------------CREAR ROLES-------------------------
CREATE PROCEDURE TR4
	@Nombre VARCHAR(100)
AS
BEGIN TRY
	BEGIN TRANSACTION;
		IF (SELECT [RoleName] FROM practica1.Roles WHERE [RoleName] = @Nombre) = @Nombre
			INSERT INTO practica1.HistoryLog([Date],[Description])
			SELECT GETDATE(),CONCAT('Error en TR4, ya existe el ROL ',@Nombre)
			--PRINT 'Ya existe el ROL'	
		ELSE
			
			INSERT INTO practica1.Roles ([Id],[RoleName]) VALUES (NEWID(),@Nombre);
	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	INSERT INTO practica1.HistoryLog(Date,Description)
	VALUES ( GETDATE(),CONCAT('Error en TR4, tabla ROLES ',ERROR_MESSAGE()));
	ROLLBACK TRANSACTION;
END CATCH
GO
EXEC TR4 'Tutor';
GO
------------------------------------------------------------
------------------------------------------------------------
--------------------CREAR CURSOS----------------------------


CREATE PROCEDURE TR5
	@code INT,
	@Nombre VARCHAR(100),
	@Credits INT
AS
BEGIN TRY
	BEGIN TRANSACTION;
		IF (SELECT [Name] FROM practica1.Course WHERE [Name] = @Nombre) = @Nombre
			INSERT INTO practica1.HistoryLog([Date],[Description])
			SELECT GETDATE(),CONCAT('Error en TR5, ya existe el Curso ',@Nombre)
			--PRINT 'Ya existe el CURSO'		
		ELSE
			--PRINT 'SE FUE AL ELSE'
			INSERT INTO practica1.Course([CodCourse],[Name],[CreditsRequired]) VALUES (@code,@Nombre,@Credits);
	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	INSERT INTO practica1.HistoryLog([Date],[Description])
	VALUES ( GETDATE(),CONCAT('Error en TR5, tabla COURSE ',ERROR_MESSAGE()) );
	ROLLBACK TRANSACTION;
END CATCH
GO
EXEC TR5 555,N'Curso de prueba',32;
GO
select * from practica1.Course;
select * from practica1.Roles;
select * from practica1.HistoryLog;
