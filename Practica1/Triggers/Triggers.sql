USE BD2;

CREATE TRIGGER trg_course
ON practica1.Course
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog([Date],[Description])
	SELECT GETDATE(),CONCAT('Se inserto el curso ',i.[Name]) FROM inserted i
	UNION ALL
	SELECT GETDATE(),CONCAT('Se elimino el curso ',d.[Name]) FROM deleted d
END

CREATE TRIGGER trg_courseAssignment
ON practica1.CourseAssignment
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog([Date],[Description])
	SELECT GETDATE(),CONCAT('El estudiante con el ID ',i.StudentId,' se asigno el curso con el codigo ',i.CourseCodCourse) FROM inserted i
	UNION ALL
	SELECT GETDATE(),CONCAT('Se elimino al estudiante con el ID ',d.StudentId,' del curso con el id  ',d.CourseCodCourse) FROM deleted d
END

CREATE TRIGGER trg_courseTutor
ON practica1.CourseTutor
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog([Date],[Description])
	SELECT GETDATE(),CONCAT('El estudiante con el ID ',i.TutorId,' es tutor del curso con el codigo ',i.CourseCodCourse) FROM inserted i
	UNION ALL
	SELECT GETDATE(),CONCAT('Se elimino al estudiante tutor con el ID ',d.TutorId,' del curso con el id  ',d.CourseCodCourse) FROM deleted d
END

CREATE TRIGGER trg_tutorProfile
ON practica1.TutorProfile
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog([Date],[Description])
	SELECT GETDATE(),CONCAT('Usuario  ',i.UserId,' asginado el codigo de tutor ',i.TutorCode) FROM inserted i
	UNION ALL
	SELECT GETDATE(),CONCAT('Eliminado - Usuario  ',d.UserId,' asginado el codigo de tutor ',d.TutorCode) FROM deleted d
END

CREATE TRIGGER trg_ProfileStudent
ON practica1.ProfileStudent
AFTER INSERT, DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog(Date, Description)
		SELECT GETDATE(), CONCAT('Se creó el perfil del estudiante con el ID ', i.UserId, ' con código de usuario ', i.Id) FROM inserted i
	UNION ALL
		SELECT GETDATE(), CONCAT('Se eliminó el perfil del estudiante con el ID ', d.UserId, ' con código de usuario ', d.Id) FROM deleted d
END

DROP TRIGGER IF EXISTS practica1.trg_TFA;
GO
CREATE TRIGGER trg_TFA
ON practica1.TFA
AFTER INSERT, UPDATE, DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog(Date, Description)
		SELECT GETDATE(), CONCAT('Se activo el TFA del estudiante con el ID ', i.UserId, ' con ID: ', i.Id) FROM inserted i
	UNION ALL
		SELECT GETDATE(), CONCAT('Se desactivo el TFA del estudiante con el ID ', d.UserId, ' con ID: ', d.Id) FROM deleted d
	UNION ALL
		SELECT GETDATE(), CONCAT('Se actualizo el TFA del estudiante con el ID ', u.UserId, ' con ID: ', u.Id) FROM updated u
END

DROP TRIGGER IF EXISTS practica1.trg_Notification;
GO
CREATE TRIGGER trg_Notification
ON practica1.Notification
AFTER INSERT, UPDATE, DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO practica1.HistoryLog(Date, Description)
		SELECT GETDATE(), CONCAT('Se envio notificación al estudiante con el ID ', i.UserId, ' con ID: ', i.Id) FROM inserted i
	UNION ALL
		SELECT GETDATE(), CONCAT('Se eliminó la notificación al estudiante con el ID ', d.UserId, ' con ID: ', d.Id) FROM deleted d
	UNION ALL
		SELECT GETDATE(), CONCAT('Se actualizo la notificación del estudiante con el ID ', u.UserId, ' con ID: ', u.Id) FROM updated u
END