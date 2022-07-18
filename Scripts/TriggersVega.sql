-- Triggers
-- Logs MEMBRESIA 
drop trigger if exists `BEF_DEL_membresia_logs`;
CREATE TRIGGER `BEF_DEL_membresia_logs`
BEFORE DELETE ON academia_mambolaye.membresia
FOR EACH ROW
INSERT INTO `logs`
VALUES (NOW(), USER(), DATABASE(), VERSION(), "membresia", "DELETE");

drop trigger if exists `BEF_INS_membresia_logs`;
CREATE TRIGGER `BEF_INS_membresia_logs`
BEFORE INSERT ON academia_mambolaye.membresia
FOR EACH ROW
INSERT INTO logs
VALUES (NOW(), USER(), DATABASE(), VERSION(), "membresia", "INSERT");

drop trigger if exists `BEF_UPD_membresia_logs`;
CREATE TRIGGER `BEF_UPD_membresia_logs`
BEFORE UPDATE ON academia_mambolaye.membresia
FOR EACH ROW
INSERT INTO logs
VALUES (NOW(), USER(), DATABASE(), VERSION(), "membresia", "UPDATE");

-- Logs ALUMNO
drop trigger if exists `BEF_DEL_alumno_logs`;
CREATE TRIGGER `BEF_DEL_alumno_logs`
BEFORE DELETE ON academia_mambolaye.alumno
FOR EACH ROW
INSERT INTO logs
VALUES (NOW(), USER(), DATABASE(), VERSION(), "alumno", "DELETE");

drop trigger if exists `BEF_INS_alumno_logs`;
CREATE TRIGGER `BEF_INS_alumno_logs`
BEFORE INSERT ON academia_mambolaye.alumno
FOR EACH ROW
INSERT INTO logs
VALUES (NOW(), USER(), DATABASE(), VERSION(), "alumno", "INSERT");

drop trigger if exists `BEF_UPD_alumno_logs`;
CREATE TRIGGER `BEF_UPD_alumno_logs`
BEFORE UPDATE ON academia_mambolaye.alumno
FOR EACH ROW
INSERT INTO logs
VALUES (NOW(), USER(), DATABASE(), VERSION(), "alumno", "UPDATE");

-- Triggers Historico Alumno
drop trigger if exists `AFT_INS_alumno_historico`;
CREATE TRIGGER `AFT_INS_alumno_historico`
AFTER INSERT ON academia_mambolaye.alumno
FOR EACH ROW
INSERT INTO historico_alumno
VALUES (NEW.dni,NEW.nombre,NEW.apellido,NEW.telefono,NEW.mail,NEW.fecha_nacimiento,NOW(),USER(),'INSERT');

drop trigger if exists `AFT_UPD_alumno_historico`;
CREATE TRIGGER `AFT_UPD_alumno_historico`
AFTER UPDATE ON academia_mambolaye.alumno
FOR EACH ROW
INSERT INTO historico_alumno
VALUES (NEW.dni,NEW.nombre,NEW.apellido,NEW.telefono,NEW.mail,NEW.fecha_nacimiento,NOW(),USER(),'UPDATE');