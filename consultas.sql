USE futbol_pro;
--1
SELECT  TOP 10 cancha.id_cancha, SUM(cantidad_goles_jugador) AS goles_partido , COUNT(partido.id_partido) AS cant_partidos
FROM EstadisticasPartido
INNER JOIN partido
ON partido.id_partido = EstadisticasPartido.id_partido
INNER JOIN cancha
ON cancha.id_cancha = partido.id_cancha
GROUP BY cancha.id_cancha
ORDER BY goles_partido DESC;

--3
DECLARE @torneo INT;
SET @torneo = 1;
SELECT cancha.id_cancha, AVG(EstadisticasPartido.cantidad_goles_jugador) AS promedio_goles_cancha
FROM cancha 
INNER JOIN partido 
ON cancha.id_cancha = partido.id_cancha
INNER JOIN EstadisticasPartido 
ON partido.id_partido = EstadisticasPartido.id_partido
INNER JOIN equipo 
ON partido.id_equipo_local = equipo.id_equipo OR partido.id_equipo_visitante = equipo.id_equipo
WHERE equipo.id_torneo = @torneo --variable XXX
GROUP BY cancha.id_cancha;

--4
DECLARE @fecha1 DATE
DECLARE @fecha2 DATE
SELECT torneo.id_torneo, AVG(EstadisticasPartido.tarjetas_amarilla) AS promedio_tarjeta, SUM(cantidad_goles_jugador) AS goles_torneo
FROM EstadisticasPartido
INNER JOIN partido
ON EstadisticasPartido.id_partido = partido.id_partido
INNER JOIN equipo
ON partido.id_equipo_local = equipo.id_equipo OR partido.id_equipo_visitante = equipo.id_equipo
INNER JOIN torneo
ON torneo.id_torneo = equipo.id_torneo
WHERE partido.fecha_partido BETWEEN @fecha1 AND @fecha2
GROUP BY torneo.id_torneo
ORDER BY goles_torneo DESC

--5
SELECT TOP 1 cancha.id_cancha, SUM(EstadisticasPartido.tarjetas_amarilla + EstadisticasPartido.tarjetas_rojas) 
AS cant_tarjetas
FROM EstadisticasPartido
INNER JOIN partido
ON EstadisticasPartido.id_partido = partido.id_partido
INNER JOIN equipo
ON partido.id_equipo_local = equipo.id_equipo OR partido.id_equipo_visitante = equipo.id_equipo
INNER JOIN cancha
ON partido.id_cancha = cancha.id_cancha
WHERE equipo.id_torneo = 2
GROUP BY cancha.id_cancha
ORDER BY cant_tarjetas DESC

--6
SELECT TOP 1 EstadisticasPartido.id_jugador, partido.fecha_partido, SUM(cantidad_goles_jugador) AS goles
FROM EstadisticasPartido
INNER JOIN partido
ON EstadisticasPartido.id_partido = partido.id_partido
WHERE MONTH(partido.fecha_partido) = 2
GROUP BY partido.fecha_partido, EstadisticasPartido.id_jugador
ORDER BY goles DESC

--7
DECLARE @goles INT
SET @goles = 3
SELECT EstadisticasPartido.id_jugador, 
SUM(EstadisticasPartido.tarjetas_amarilla + EstadisticasPartido.tarjetas_rojas) AS cant_tarjetas,
SUM(EstadisticasPartido.cantidad_goles_jugador) AS goles_jugador
FROM EstadisticasPartido
GROUP BY EstadisticasPartido.id_jugador
HAVING SUM(EstadisticasPartido.cantidad_goles_jugador)  > @goles
ORDER BY cant_tarjetas DESC

--8
DECLARE @year VARCHAR(20)
SELECT TOP 1 cancha.id_cancha, COUNT(id_arbitro) AS cant_arbitros
FROM EstadisticasPartido
INNER JOIN partido
ON partido.id_arbitro = EstadisticasPartido.id_partido
INNER JOIN cancha
ON cancha.id_cancha = partido.id_cancha
WHERE YEAR(partido.fecha_partido) = @year
GROUP BY cancha.id_cancha
ORDER BY cant_arbitros DESC

--9
SELECT cancha.id_cancha
FROM partido
INNER JOIN cancha
ON cancha.id_cancha = partido.id_cancha
WHERE cancha.disponibilidad = 1 AND partido.fecha_partido BETWEEN @fecha1 AND @fecha2

--10
