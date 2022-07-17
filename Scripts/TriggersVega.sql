-- Trigger de logs
-- Trigger para el registro de accion eliminar en tabla membresia 
drop trigger if exists BEF_DEL_membresia_logs;
CREATE TRIGGER BEF_DEL_membresia_logs
BEFORE DELETE ON academia_mambolaye.membresia
FOR EACH ROW
INSERT INTO logs
VALUES (NOW(), USER(), DATABASE(), VERSION(), "membresia", "Delete");


