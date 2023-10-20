-- Create New Database
CREATE DATABASE Empresa_EFTH;

-- tabla Departamentos
CREATE TABLE Departamentos (
    ID_Dep NUMBER PRIMARY KEY,
    Nombre_dep VARCHAR2(255) NOT NULL
);

-- tabla Empleados
CREATE TABLE Empleados (
    ID_Emp NUMBER PRIMARY KEY,
    Nombre VARCHAR2(255) NOT NULL,
    Apellido VARCHAR2(255) NOT NULL,
    Direcci�n VARCHAR2(255),
    Codigo_Postal VARCHAR2(10),
    Cargo VARCHAR2(100),
    Salario NUMBER(10, 2),
    ID_Dep NUMBER,
    CONSTRAINT fk_Departamento FOREIGN KEY (ID_Dep)
    REFERENCES Departamentos (ID_Dep)
);

-- Insertar departamentos: 
INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (1, 'Mercadotecnia');

INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (2, 'Recursos Humanos');

INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (3, 'Contabilidad');

INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (4, 'Sistemas');

INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (5, 'Producci�n');

INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (6, 'Ventas');

INSERT INTO Departamentos (ID_Dep, Nombre_dep)
VALUES (7, 'Almacen');

-- Insertar empleados ficticios en la tabla Empleados Para cada uno de los 7 departamentos
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (1, 'Juan', 'Perez', 'Calle 123', '12345', 'Gerente de Marketing', 15000, 1);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (2, 'Ana', 'Gonz�lez', 'Avenida 456', '56789', 'Especialista en Publicidad', 18000, 1);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (3, 'Carlos', 'L�pez', 'Calle 789', '98765', 'Analista de Mercado', 22000, 1);

-- Departamento: Recursos Humanos (ID_Dep 2)
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (4, 'Mar�a', 'Mart�nez', 'Calle 101', '54321', 'Gerente de Recursos Humanos', 17000, 2);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (5, 'Pedro', 'Ram�rez', 'Avenida 202', '67890', 'Especialista en Capacitaci�n', 19000, 2);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (6, 'Laura', 'G�mez', 'Calle 303', '23456', 'Analista de RRHH', 21000, 2);

-- Departamento: Contabilidad (ID_Dep 3)
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (7, 'Roberto', 'S�nchez', 'Avenida 404', '54321', 'Gerente de Contabilidad', 23000, 3);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (8, 'Isabel', 'Torres', 'Calle 505', '67890', 'Contador Senior', 25000, 3);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (9, 'Miguel', 'Ortega', 'Avenida 606', '23456', 'Analista Contable', 27000, 3);

-- Departamento: Sistemas (ID_Dep 4)
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (10, 'Laura', 'P�rez', 'Calle 707', '43210', 'Director de IT', 30000, 4);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (11, 'Carlos', 'G�mez', 'Avenida 808', '98701', 'Desarrollador Senior', 32000, 4);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (12, 'Ana', 'Ram�rez', 'Calle 909', '56789', 'T�cnico de Soporte', 28000, 4);

-- Departamento: Producci�n (ID_Dep 5)
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (13, 'Pedro', 'Garc�a', 'Avenida 1010', '12345', 'Gerente de Producci�n', 35000, 5);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (14, 'Isabel', 'Soto', 'Calle 1111', '23456', 'Supervisor de L�nea', 31000, 5);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (15, 'Miguel', 'Mart�nez', 'Avenida 1212', '54321', 'Operario de M�quina', 29000, 5);

-- Departamento: Ventas (ID_Dep 6)
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (16, 'Laura', 'Gonz�lez', 'Calle 1313', '67890', 'Director de Ventas', 42000, 6);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (17, 'Juan', 'L�pez', 'Avenida 1414', '43210', 'Representante de Ventas', 38000, 6);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (18, 'Carlos', 'Ram�rez', 'Avenida 99992', '549008', 'Asistente de Ventas', 12000, 6);

-- Departamento: Almacen (ID_Dep 7)
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (19, 'Roberto', 'S�nchez', 'Avenida 1616', '43210', 'Gerente de Almacen', 40000, 7);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (20, 'Isabel', 'Torres', 'Calle 1717', '98701', 'Especialista en Inventarios', 45000, 7);

INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (21, 'Miguel', 'Ortega', 'Avenida 1818', '56789', 'Encargado de Log�stica', 50000, 7);

CREATE VIEW VistaEmpleados AS
SELECT E.*, D.Nombre_dep AS NombreDepartamento
FROM Empleados E
INNER JOIN Departamentos D ON E.ID_Dep = D.ID_Dep;
SELECT * FROM VistaEmpleados;

CREATE VIEW VistaProduccion AS
SELECT Nombre, Apellido
FROM Empleados
WHERE ID_Dep = 5;
SELECT * FROM VistaProduccion;

CREATE VIEW VistaSalarioMayor20000 AS
SELECT *
FROM Empleados
WHERE Salario > 20000;
SELECT * FROM VistaSalarioMayor20000;

-- 2 registros adicionales en la tabla Empleados con salarios > $25,000
-- Registro 1
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (22, 'Eduardo', 'Rodr�guez', 'Calle 222', '54321', 'Gerente de Proyectos', 28000, 4);
-- Registro 2
INSERT INTO Empleados (ID_Emp, Nombre, Apellido, Direcci�n, Codigo_Postal, Cargo, Salario, ID_Dep)
VALUES (23, 'M�nica', 'Fern�ndez', 'Avenida 333', '67890', 'Analista Financiero', 27000, 3);

SELECT * FROM VistaSalarioMayor20000;
