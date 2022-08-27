------------------------------------------------------------
------------------------------------------------------------
------------------VALIDACION DE DATOS-----------------------
-- ++++++++++++++++++++++++++++++++++++++++++++++++
-- ++++++++++++++		FUNCIONES	+++++++++++++++
-- ++++++++++++++++++++++++++++++++++++++++++++++++

-- ++++++++++++++		F1		+++++++++++++++
-- • Func_course_usuarios: Función que retornará el listado completo de
--   alumnos que están asignados a un determinado curso.

-- Manual test
--INSERT INTO practica1.CourseAssignment VALUES ('1DA6A4B0-656C-470F-A0C8-E3A7662241B3', 970)
--GO
IF OBJECT_ID (N'practica1.F1', N'IF') IS NOT NULL
    DROP FUNCTION practica1.F1;
GO
CREATE FUNCTION practica1.F1 (@CodCourse INT)
RETURNS TABLE
AS
RETURN
(
	SELECT u.Firstname, u.Lastname, u.Email, u.DateOfBirth
		FROM practica1.Usuarios u
		INNER JOIN practica1.CourseAssignment ca
			ON u.Id = ca.StudentId
		INNER JOIN practica1.Course c
			ON ca.CourseCodCourse = c.CodCourse
		WHERE c.CodCourse = @CodCourse
		--GROUP BY u.Id
);

SELECT * FROM practica1.F1(970);
--DROP FUNCTION practica1.F1

-- ++++++++++++++		F2		+++++++++++++++
-- • Func_tutor_course: Función que retornará la lista de cursos a los cuales
--   los tutores estén designados para dar clase.
-- Id tutor
IF OBJECT_ID (N'practica1.F2', N'IF') IS NOT NULL
    DROP FUNCTION practica1.F2;
GO
CREATE FUNCTION practica1.F2 (@Id UNIQUEIDENTIFIER)
RETURNS TABLE
AS
RETURN
(
	SELECT u.Firstname, u.Lastname, c.Name, c.CreditsRequired
		FROM practica1.Course C
		INNER JOIN practica1.CourseTutor ct
			ON ct.CourseCodCourse = c.CodCourse
		INNER JOIN practica1.Usuarios u
			ON u.Id = ct.TutorId
		WHERE u.Id = @Id
		--GROUP BY c.Name
);

SELECT * FROM practica1.F2('DD0526A7-C52B-4452-8DE5-2369EB5B7A0D');

SELECT * FROM practica1.CourseTutor;

-- ++++++++++++++		F3		+++++++++++++++
-- • Func_notification_usuarios: Función que retornará la lista de
--   notificaciones que hayan sido enviadas a un usuario.
IF OBJECT_ID (N'practica1.F3', N'IF') IS NOT NULL
    DROP FUNCTION practica1.F3;
GO
-- Id usuario
CREATE FUNCTION practica1.F3 (@Id UNIQUEIDENTIFIER)
RETURNS TABLE
AS
RETURN
(
	SELECT u.Firstname, u.Lastname, n.Message, n.Date
		FROM practica1.Notification n
		INNER JOIN practica1.Usuarios u
			ON u.Id = n.UserId
		WHERE u.Id = @Id
		-- GROUP BY u.Firstname
);

SELECT * FROM practica1.F3('DD0526A7-C52B-4452-8DE5-2369EB5B7A0D');

-- ++++++++++++++		F4		+++++++++++++++
-- • Func_logger: Función que retornará la información almacenada en la
--   tabla HistoryLog.
IF OBJECT_ID (N'practica1.F4', N'IF') IS NOT NULL
    DROP FUNCTION practica1.F4;
GO
CREATE FUNCTION practica1.F4 ()
RETURNS TABLE
AS
RETURN
(
	SELECT h.Description, h.Date
		FROM practica1.HistoryLog h
		--GROUP BY h.Id, h.Date
);

SELECT * FROM practica1.F4();
-- ++++++++++++++		F5		+++++++++++++++
--• Func_usuarios: Función que retornará el expediente de cada alumno,
--	que incluye los siguientes campos:
	--o Firstname
	--o Lastname
	--o Email
	--o DateOfBirth
	--o Credits
	--o RoleName
IF OBJECT_ID (N'practica1.F5', N'IF') IS NOT NULL
    DROP FUNCTION practica1.F5;
GO
-- Id usuario
CREATE FUNCTION practica1.F5 (@Id UNIQUEIDENTIFIER)
RETURNS TABLE
AS
RETURN
(
	SELECT u.Firstname, u.Lastname, u.Email, u.DateOfBirth, ps.Credits, r.RoleName
		FROM practica1.Usuarios u
		INNER JOIN practica1.ProfileStudent ps
			ON u.Id = ps.UserId
		INNER JOIN practica1.UsuarioRole ur
			ON u.Id = ur.UserId
		INNER JOIN practica1.Roles r
			ON ur.RoleId = r.Id
		WHERE u.Id = @Id
		-- GROUP BY u.Firstname
);

SELECT * FROM practica1.F5('396FCC1F-E857-4B81-95AF-48CC1A1103F8');