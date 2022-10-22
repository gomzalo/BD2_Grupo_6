USE DB_P2;
-- 1. Total de pacientes que llegan a la clínica por edad catalogados por las
-- siguientes categorías
-- a. Pediátrico: menores de 18 años
SELECT COUNT(*) AS Pediatrico FROM PACIENTE WHERE EDAD <18;

-- b. Mediana edad: entre 18 y 60 años
SELECT COUNT(*) AS Mediana_Edad FROM PACIENTE WHERE EDAD >=18 AND EDAD <= 60;

-- c. Geriátrico: mayores de 60 años
SELECT COUNT(*) AS Geriatico FROM PACIENTE WHERE EDAD >60;

-- 2. Cantidad de pacientes que pasan por cada habitación
SELECT H.habitacion, COUNT(*) as TotalPacientes 
FROM LOG_ACTIVIDAD LA, HABITACION H WHERE h.idHabitacion=LA.idHabitacion
GROUP BY H.habitacion;

-- 3. Cantidad de pacientes que llegan a la clínica, agrupados por género
SELECT genero, COUNT(*) as total FROM PACIENTE
group by genero; 

-- 4. Top 5 edades más atendidas en la clínica
SELECT COUNT(*) as Total,P.edad
FROM LOG_ACTIVIDAD LA, PACIENTE P WHERE P.idPaciente=LA.idPaciente
GROUP BY P.edad 
ORDER BY total DESC
limit 5;

-- 5. Top 5 edades menos atendidas en la clínica
SELECT COUNT(*) as Total,P.edad
FROM LOG_ACTIVIDAD LA, PACIENTE P WHERE P.idPaciente=LA.idPaciente
GROUP BY P.edad 
ORDER BY total ASC
limit 5;

-- 6. Top 5 habitaciones más utilizadas
SELECT H.habitacion, COUNT(*) as Total
FROM LOG_ACTIVIDAD LA, HABITACION H WHERE h.idHabitacion=LA.idHabitacion
GROUP BY H.habitacion
ORDER BY total DESC
limit 5;

-- 7. Top 5 habitaciones menos utilizadas
SELECT H.habitacion, COUNT(*) as Total
FROM LOG_ACTIVIDAD LA, HABITACION H WHERE h.idHabitacion=LA.idHabitacion
GROUP BY H.habitacion
ORDER BY total ASC
limit 5;

-- 8. Día con más pacientes en la clínica
SELECT timestampx, COUNT(idPaciente) AS NO_PACIENTE FROM log_actividad
GROUP BY timestampx ORDER BY NO_PACIENTE DESC LIMIT 1;
