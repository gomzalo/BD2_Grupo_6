SHOW DATABASES;

-- --------------------------------------------------
-- PRIMER DIA
-- --------------------------------------------------
-- CREAR DB
DROP DATABASE DB_CMEDICO;
CREATE DATABASE DB_CMEDICO
CHARACTER SET utf8
COLLATE utf8_general_ci;

USE DB_CMEDICO;

-- CREAR TABLAS

CREATE TABLE PACIENTE (
	idPaciente INT,
    edad INT,
    genero VARCHAR(20),
    CONSTRAINT pk_paciente PRIMARY KEY(idPaciente)
);

CREATE TABLE HABITACION (
	idHabitacion INT,
    habitacion VARCHAR(50),
    CONSTRAINT pk_habitacion PRIMARY KEY (idHabitacion)
);

CREATE TABLE LOG_HABITACION (
	id_log_habitacion INT AUTO_INCREMENT,
	timestampx VARCHAR(100),
    statusx VARCHAR(45),
    idHabitacion INT,
    CONSTRAINT pk_loghabitacion PRIMARY KEY (id_log_habitacion),
    CONSTRAINT fk_habitacionlog FOREIGN KEY (idHabitacion) REFERENCES HABITACION(idHabitacion)
);

CREATE TABLE LOG_ACTIVIDAD (
	id_log_actividad INT AUTO_INCREMENT,
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    idPaciente INT,
    idHabitacion INT,
    CONSTRAINT pk_logactividad PRIMARY KEY (id_log_actividad),
    CONSTRAINT fk_pacienteactividad FOREIGN KEY (idPaciente) REFERENCES PACIENTE(idPaciente),
    CONSTRAINT fk_habitacionactividad FOREIGN KEY (idHabitacion) REFERENCES HABITACION(idHabitacion)
);

-- CARGA DE DATOS
LOAD DATA
INFILE 'C:\\CSVInputFiles\\Habitaciones.csv'
INTO TABLE HABITACION
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- FULL BACKPU
-- BACKUP
-- mysqldump -u root -p DB_CMEDICO > fullbackup_dia1.sql
-- RESTORE
-- mysqldump -u root -p DB_CMEDICO < fullbackup_dia1.sql

-- INCREMENTAL BACKUP
-- EN MySQL Command Line:
-- GENERAR BINARY LOGS
-- flush logs;
-- show binary logs;
-- EN Consola normal
-- mysqlbinlog -v "C:\ProgramData\MySQL\MySQL Server 8.0\Data\G10-bin.000039" > "C:\Program Files\MySQL\MySQL Server 8.0\bin\incrementalbackup_dia1_1.sql"
-- mysql -u root -p DB_CMEDICO < incrementalbackup_dia1.sql

-- LIMIT
SELECT * FROM PACIENTE LIMIT 20;
SELECT * FROM HABITACION LIMIT 20;
SELECT * FROM LOG_HABITACION LIMIT 20;
SELECT * FROM LOG_ACTIVIDAD LIMIT 20;

-- ORDER BY
SELECT * FROM PACIENTE ORDER BY 1 DESC LIMIT 20;
SELECT * FROM HABITACION ORDER BY 1 DESC LIMIT 20;
SELECT * FROM LOG_HABITACION ORDER BY 1 DESC LIMIT 20;
SELECT * FROM LOG_ACTIVIDAD ORDER BY 1 DESC LIMIT 20;

-- COUNT
SELECT COUNT(*) FROM PACIENTE;
SELECT COUNT(*) FROM HABITACION;
SELECT COUNT(*) FROM LOG_HABITACION;
SELECT COUNT(*) FROM LOG_ACTIVIDAD;