USE BD2
GO

-- DESCRIPTION : Creacion de usuarios
DROP PROCEDURE IF EXISTS TR1;
GO
CREATE  PROCEDURE TR1 
	@Firstname NVARCHAR(MAX), 
	@Lastname NVARCHAR(MAX),
	@Email NVARCHAR(MAX), 
	@DateOfBirth DATETIME2(7), 
	@Password NVARCHAR(MAX), 
	@Credits INT
AS
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO practica1.Usuarios VALUES(NEWID(),@Firstname,@Lastname,@Email,@DateOfBirth,@Password,CAST(GETDATE() AS datetime2(7)),0);

			DECLARE @Id_usuario UNIQUEIDENTIFIER
			DECLARE @Id_role UNIQUEIDENTIFIER

			SET @Id_role = (SELECT Id FROM practica1.Roles WHERE RoleName='Student');
			SET @Id_usuario = (SELECT Id FROM practica1.Usuarios WHERE Email=@Email);

			INSERT INTO practica1.ProfileStudent VALUES (@Id_usuario,@Credits);

			INSERT INTO practica1.TFA VALUES (@Id_usuario,0,GETDATE());

			INSERT INTO practica1.UsuarioRole VALUES (@Id_role,@Id_usuario,1);

			INSERT INTO practica1.Notification VALUES (@Id_usuario,'Bienvenido, Este es un email de confirmacion', GETDATE());
		COMMIT TRANSACTION
			PRINT 'DATA INSERTED'
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		INSERT INTO practica1.HistoryLog(Date,Description)
		VALUES (GETDATE(),CONCAT('Error en TR1, tabla ProfileStudent, TFA, UsuarioRole,Notification  ',ERROR_MESSAGE()));
		PRINT 'ERROR ON DATA, ROLLBACK CHANGES'
	END CATCH

END

EXEC TR1 'Erick','Test','prueba2@gmail.com','1996-12-13','HolaMundo',236

select * from practica1.Usuarios;
select * from practica1.ProfileStudent;
select * from practica1.TFA;
select * from practica1.UsuarioRole;
select * from practica1.Notification;


--SELECT * FROM practica1.HistoryLog
