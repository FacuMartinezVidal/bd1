-- Crear la base de datos
CREATE DATABASE futbol_pro;

-- Usar la base de datos
USE futbol_pro;

-- Crear la tabla "torneo"
CREATE TABLE torneo (
    id_torneo INT IDENTITY(1,1) PRIMARY KEY,
    nombre_torneo VARCHAR(20),
    fecha_inicio DATE,
    fecha_final DATE,

);

alter table torneo add categoria int;

-- Crear la tabla "equipo"
CREATE TABLE equipo (
    id_equipo INT IDENTITY(1,1) PRIMARY KEY,
    nombre_equipo VARCHAR(20),
    id_torneo INT,
    FOREIGN KEY (id_torneo) REFERENCES torneo(id_torneo)
);


-- Crear la tabla "jugador"
CREATE TABLE jugador (
    id_jugador INT IDENTITY(1,1) PRIMARY KEY,
    nombre_jugador VARCHAR(50),
    apellido_jugador VARCHAR(50),
    dni INT,
    numero_camiseta INT,
    fecha_nacimiento DATE,
    telefono INT,
    posicion VARCHAR(30),
    persona_contacto BIT,
    id_equipo INT,
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
);


-- Crear la tabla "arbitro"
CREATE TABLE arbitro (
    id_arbitro INT IDENTITY(1,1) PRIMARY KEY,
    nombre_arbitro VARCHAR(30),
    apellido_arbitro VARCHAR(30),
);

-- Crear la tabla "cancha"
CREATE TABLE cancha (
    id_cancha INT IDENTITY(1,1) PRIMARY KEY,
    disponibilidad BIT
);

-- Crear la tabla "EstadisticasPartido"
CREATE TABLE EstadisticasPartido (
	id_estadisticas INT IDENTITY(1,1) PRIMARY KEY,
	id_partido INT,
	id_jugador INT,
	cantidad_goles_jugador INT,
	FOREIGN KEY (id_partido) REFERENCES partido(id_partido),
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador),
);

alter table EstadisticasPartido add tarjetas_rojas int;
alter table EstadisticasPartido add tarjetas_amarilla int;


-- Crear la tabla "partido"
CREATE TABLE partido (
    id_partido INT IDENTITY(1,1) PRIMARY KEY,
    fecha_partido DATE,
    hora_partido TIME,
    id_cancha INT,
    id_equipo_local INT,
    id_equipo_visitante INT,
    id_arbitro INT,
    resultado_local INT,
    resultado_visitante INT,
    FOREIGN KEY (id_arbitro) REFERENCES arbitro(id_arbitro),
    FOREIGN KEY (id_equipo_local) REFERENCES equipo(id_equipo),
    FOREIGN KEY (id_equipo_visitante) REFERENCES equipo(id_equipo),
    FOREIGN KEY (id_cancha) REFERENCES cancha(id_cancha),

);

