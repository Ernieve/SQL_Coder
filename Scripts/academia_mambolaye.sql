#Habilitar eliminación y actualización en cascada
SET sql_safe_updates=0;

CREATE SCHEMA academia_mambolaye;

USE academia_mambolaye;

-- ALUMNOS
CREATE TABLE IF NOT EXISTS alumno(
id_alumno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
dni INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
mail VARCHAR(120) NOT NULL,
fecha_nacimiento DATE NOT NULL
);

-- TIPO DE PAGO
CREATE TABLE IF NOT EXISTS tipo_pago(
id_tipo_pago INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
descripcion_pago VARCHAR(20)
);

-- MEMBRESIA
CREATE TABLE IF NOT EXISTS membresia(
id_membresia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_alumno INT NOT NULL,
id_tipo_pago INT NOT NULL,
fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (id_alumno) REFERENCES academia_mambolaye.alumno(id_alumno) ON DELETE CASCADE,
FOREIGN KEY (id_tipo_pago) REFERENCES academia_mambolaye.tipo_pago(id_tipo_pago) ON DELETE CASCADE
);

-- PROFESOR
CREATE TABLE IF NOT EXISTS profesor(
id_profesor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
dni INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
mail VARCHAR(120) NOT NULL,
telefono INT NOT NULL
);

-- GENERO MUSICAL
CREATE TABLE IF NOT EXISTS genero_musical(
id_genero INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre_genero VARCHAR(15) NOT NULL
);

-- ESTILO DE BAILE
CREATE TABLE IF NOT EXISTS estilo(
id_estilo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre_estilo VARCHAR(20) NOT NULL,
id_genero INT NOT NULL,
FOREIGN KEY (id_genero) REFERENCES academia_mambolaye.genero_musical(id_genero)
);

-- HORARIOS DE CLASES
CREATE TABLE IF NOT EXISTS horario_clase(
id_horario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
dia VARCHAR(20) NOT NULL,
hora_inicio TIME,
hora_fin TIME
);

-- DIRECTORES ACADEMIA
CREATE TABLE IF NOT EXISTS director(
id_director INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
dni INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL 
);

-- SEDES
CREATE TABLE IF NOT EXISTS sede(
id_sede INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre_sede VARCHAR(100) NOT NULL,
direccion VARCHAR(150) NOT NULL,
telefono INT,
id_director INT,
FOREIGN KEY (id_director) REFERENCES director(id_director)
);

-- NIVEL DE BAILE
CREATE TABLE IF NOT EXISTS nivel(
id_nivel INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
descripcion VARCHAR(20) NOT NULL
);

-- SALONES
CREATE TABLE IF NOT EXISTS salon(
id_salon INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre_salon VARCHAR(50) NOT NULL,
id_sede INT NOT NULL,
FOREIGN KEY (id_sede) REFERENCES academia_mambolaye.sede(id_sede)
);

-- CLASE
CREATE TABLE IF NOT EXISTS clase(
id_clase INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_profesor INT NOT NULL,
id_horario INT NOT NULL,
id_estilo INT NOT NULL,
id_salon INT NOT NULL,
id_nivel INT NOT NULL,
FOREIGN KEY (id_profesor) REFERENCES academia_mambolaye.profesor(id_profesor),
FOREIGN KEY (id_horario) REFERENCES academia_mambolaye.horario_clase(id_horario),
FOREIGN KEY (id_estilo) REFERENCES academia_mambolaye.estilo(id_estilo),
FOREIGN KEY (id_salon) REFERENCES academia_mambolaye.salon(id_salon),
FOREIGN KEY (id_nivel) REFERENCES academia_mambolaye.nivel(id_nivel)
);

-- INSCRIPCION
CREATE TABLE IF NOT EXISTS inscripcion(
id_membresia INT NOT NULL,
id_clase INT NOT NULL,
fecha_inscripcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (id_membresia) REFERENCES academia_mambolaye.membresia(id_membresia) ON DELETE CASCADE,
FOREIGN KEY (id_clase) REFERENCES academia_mambolaye.clase(id_clase)
);

#LOGS
CREATE TABLE IF NOT EXISTS logs(
	fecha_hora DATETIME,
    usuario VARCHAR(100),
    bd VARCHAR(100),
    version VARCHAR(20),
    tabla VARCHAR(20),
    accion VARCHAR(15)
);

#BITACORA_ALUMNOS
CREATE TABLE IF NOT EXISTS historico_alumno(
dni INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
mail VARCHAR(120) NOT NULL,
fecha_nacimiento DATE NOT NULL,
fecha_hora_accion DATETIME,
usuario VARCHAR(100),
accion VARCHAR(15)
);
