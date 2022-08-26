use BD2;

-----------------------------------------------------------
-----------------------------------------------------------
-----------------------CREAR ROLES-------------------------
CREATE PROCEDURE TR4
	@Nombre VARCHAR(100)
AS
BEGIN
	IF (SELECT [RoleName] FROM practica1.Roles WHERE [RoleName] = @Nombre) = @Nombre
		PRINT 'Ya existe el ROL'		
	ELSE
		--PRINT 'SE FUE AL ELSE'
		INSERT INTO practica1.Roles ([Id],[RoleName]) VALUES (NEWID(),@Nombre);
END;
GO
EXEC TR4 'Tutor';
GO
select * from practica1.Roles;
GO
------------------------------------------------------------
------------------------------------------------------------
--------------------CREAR CURSOS----------------------------


CREATE PROCEDURE TR5
	@code INT,
	@Nombre VARCHAR(100),
	@Credits INT
AS
BEGIN
	IF (SELECT [Name] FROM practica1.Course WHERE [Name] = @Nombre) = @Nombre
		PRINT 'Ya existe el CURSO'		
	ELSE
		--PRINT 'SE FUE AL ELSE'
		INSERT INTO practica1.Course([CodCourse],[Name],[CreditsRequired]) VALUES (@code,@Nombre,@Credits);
END;
GO
EXEC TR5 555,N'Curso de prueba',32;
GO
select * from practica1.Course;
