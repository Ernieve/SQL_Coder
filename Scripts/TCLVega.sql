USE academia_mambolaye;

set sql_safe_updates=0;

-- Transaction con ROLLBACK
START TRANSACTION;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 1;
    DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 2;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 3;
    DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 4;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 5;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 6;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 7;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 8;
-- Deshacer las eliminaciones anteriores
ROLLBACK; 

-- Transaction con COMMIT
START TRANSACTION;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 1;
    DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 2;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 3;
    DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 4;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 5;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 6;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 7;
	DELETE FROM academia_mambolaye.alumno WHERE id_alumno = 8;
-- Ejecuto las eliminaciones 
COMMIT; 

#Savepoint con 8 Registros
START TRANSACTION;
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (1,96036597,'Ernie','Vega',1161989945,'ernesvein18@gmail.com','1989-06-18');
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (2,30020758,'Trula','Coleford',1048063419,'tcoleford0@mapquest.com','1999-02-03');
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (3,30031204,'Adelice','Gores',1993368020,'agores2@wunderground.com','1999-12-28');
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (4,30054027,'Sherwood','Ible',1120795570,'sible1@hibu.com','1998-12-17');
SAVEPOINT mitad;
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (5,30051640,'Sheridan','Ream',1002763570,'sream3@cyberchimps.com','1996-07-10');
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (6,30028931,'Nance','Benedidick',1612743010,'nbenedidick4@blogs.com','1990-08-10');
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (7,30022815,'Hillary','Roloff',1076166546,'hroloff5@flickr.com','1993-11-01');
	INSERT INTO academia_mambolaye.alumno(id_alumno,dni,nombre,apellido,telefono,mail,fecha_nacimiento) VALUES (8,30050121,'Alecia','Sunley',1131859081,'asunley6@wikia.com','1992-08-12');
SAVEPOINT total;

#Eliminar savepoint:
RELEASE SAVEPOINT mitad;


