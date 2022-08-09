-- Funcion 1: Contabilizar alumnos por id_clase
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `cant_alumnos_x_clase`(p_id_clase INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE resultado INT;
    set resultado = (select count(*) from inscripcion where id_clase=p_id_clase);
	RETURN resultado;
END$$
DELIMITER ;

-- Funcion 2: retornar el nombre del ultimo alumno que se registro segun el id_clase
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `ult_alumno_x_clase`(p_id_clase INT) RETURNS varchar(255)
READS SQL DATA
BEGIN
	DECLARE resultado varchar(255);
    set resultado = (select max(concat(al.nombre, ' ', al.apellido)) from inscripcion ins join membresia mem on (ins.id_membresia = mem.id_membresia)
	join alumno al on (al.id_alumno = mem.id_alumno) join clase cla on (ins.id_clase = cla.id_clase) where ins.id_clase = p_id_clase);
    RETURN resultado;
END$$
DELIMITER ;	