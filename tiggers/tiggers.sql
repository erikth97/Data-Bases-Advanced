CREATE DATABASE Actividad4;

CREATE TABLE alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    calificacion FLOAT
);

describe alumnos;

DELIMITER //
CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.calificacion < 0 THEN
        SET NEW.calificacion = 0;
    ELSEIF NEW.calificacion > 10 THEN
        SET NEW.calificacion = 10;
    END IF;
END;
//
DELIMITER ;
INSERT INTO alumnos (nombre, apellido1, apellido2, calificacion) VALUES ('Erik', 'tamayo', 'heredia', -5);
INSERT INTO alumnos (nombre, apellido1, apellido2, calificacion) VALUES ('roberto', 'Garcia', 'Garza', 15);
INSERT INTO alumnos (nombre, apellido1, apellido2, calificacion) VALUES ('Leonardo', 'Martinez', 'Cantu', 8.5);
INSERT INTO alumnos (nombre, apellido1, apellido2, calificacion) VALUES ('Ileana', 'Garibay', 'De la rosa', 9.7);
SELECT * FROM alumnos;

INSERT INTO alumnos (nombre, apellido1, apellido2, calificacion) VALUES
('Beto', 'Fernandez', 'Tamez', 8.5),
('Juan', 'Perez', 'Gomez', 8.5),
('Maria', 'Lopez', 'Garcia', 7.2),
('Pedro', 'Rodriguez', 'Sanchez', 6.8),
('Ana', 'Gonzalez', 'Martinez', 9.3),
('Luis', 'Hernandez', 'Ramirez', 10),
('Laura', 'Torres', 'Fernandez', 5.5),
('Patricia', 'Lopez', 'Torres', 9.8),
('Ricardo', 'Sanchez', 'Diaz', 0),
('Martha', 'Garcia', 'Hernandez', 7.5),
('Alejandro', 'Perez', 'Rodriguez', 10);

SELECT * FROM alumnos;

DELIMITER //
CREATE PROCEDURE obtener_alumnos_por_calificacion(IN nota FLOAT)
BEGIN
    SELECT * FROM alumnos WHERE calificacion >= nota;
END;
CALL obtener_alumnos_por_calificacion(7.0);

DELIMITER //
CREATE FUNCTION contar_alumnos() RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM alumnos;
    RETURN total;
END;

SELECT contar_alumnos();
