USE mysql;

SELECT * FROM USER;

-- Creo usuarios con sus contraseñas por default => Sql2022_
CREATE USER user_1@localhost IDENTIFIED BY 'Sql2022_';
CREATE USER user_2@localhost IDENTIFIED BY 'Sql2022_';

-- Otorgando permisos de solo lectura a todas las tablas al user_1:
GRANT SELECT ON *.* TO user_1@localhost;

-- Otorgando permisos de lectura, inserción y modificación a todas las tablas al user_2:
GRANT SELECT, INSERT, UPDATE ON *.* TO user_2@localhost;