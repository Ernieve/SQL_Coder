-- SP Para mostrar datos ordenados de una tabla indicada por el usuario
drop procedure if exists `sp_orden_x_campo`;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_orden_x_campo`(IN p_table VARCHAR(100), IN p_field VARCHAR(100), IN p_order INT)
BEGIN
	IF p_field <> '' THEN
		SET @field = CONCAT(' ORDER BY ', p_field);
	ELSE
		SET @field = CONCAT(' ORDER BY 1');
	END IF;
    
    IF p_order = 1 THEN
        SET @ord = CONCAT(' ASC');
	ELSE
		SET @ord = CONCAT(' DESC');
	END IF;
    
    SET @sentence = CONCAT('SELECT * FROM academia_mambolaye.',p_table, @field, @ord);
    PREPARE sentenceSQL FROM @sentence;
    EXECUTE sentenceSQL;
    DEALLOCATE PREPARE sentenceSQL;
END$$
DELIMITER ;

-- SP Eliminar alumno enviando por parametro el DNI
drop procedure if exists `sp_delete_alumno`;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_alumno`(IN p_dni INT)
BEGIN
	IF p_dni = '' or p_dni = 0 then
		SELECT 'ERROR: no se pudo eliminar el registro indicado';
	ELSE
		DELETE FROM academia_mambolaye.alumno WHERE dni = p_dni;
	END IF;
END$$
DELIMITER ;
