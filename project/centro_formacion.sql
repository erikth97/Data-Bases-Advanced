CREATE TYPE Personas AS OBJECT (
  DNI_P VARCHAR2(20),  
  Nombre_P VARCHAR2(50), 
  CONSTRUCTOR FUNCTION Personas(self IN OUT NOCOPY Personas) RETURN SELF AS RESULT,
  MEMBER FUNCTION getDNI_P RETURN VARCHAR2,
  MEMBER FUNCTION getNombre_P RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY Personas AS
  CONSTRUCTOR FUNCTION Personas(self IN OUT NOCOPY Personas) RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;
  
  MEMBER FUNCTION getDNI_P RETURN VARCHAR2 IS
  BEGIN
    RETURN DNI_P;
  END;
  
  MEMBER FUNCTION getNombre_P RETURN VARCHAR2 IS
  BEGIN
    RETURN Nombre_P;
  END;
END;
/

-- Crear la subclase "Alumnos" que hereda de "Personas"
CREATE TYPE Alumnos UNDER Personas (
  Edad_A NUMBER,  
  DNI_A VARCHAR2(20), 
  Codigo_As VARCHAR2(20),  
  CONSTRUCTOR FUNCTION Alumnos(self IN OUT NOCOPY Alumnos, DNI_P VARCHAR2, Nombre_P VARCHAR2, Edad_A NUMBER, DNI_A VARCHAR2, Codigo_As VARCHAR2) RETURN SELF AS RESULT,
  OVERRIDING MEMBER FUNCTION getDNI_P RETURN VARCHAR2,
  OVERRIDING MEMBER FUNCTION getNombre_P RETURN VARCHAR2,
  MEMBER FUNCTION getEdad_A RETURN NUMBER,
  MEMBER FUNCTION getDNI_A RETURN VARCHAR2,
  MEMBER FUNCTION getCodigo_As RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY Alumnos AS
  CONSTRUCTOR FUNCTION Alumnos(self IN OUT NOCOPY Alumnos, DNI_P VARCHAR2, Nombre_P VARCHAR2, Edad_A NUMBER, DNI_A VARCHAR2, Codigo_As VARCHAR2) RETURN SELF AS RESULT IS
  BEGIN
    self.DNI_P := DNI_P;
    self.Nombre_P := Nombre_P;
    self.Edad_A := Edad_A;
    self.DNI_A := DNI_A;
    self.Codigo_As := Codigo_As;
    RETURN;
  END;
  
  OVERRIDING MEMBER FUNCTION getDNI_P RETURN VARCHAR2 IS
  BEGIN
    RETURN DNI_P;
  END;
  
  OVERRIDING MEMBER FUNCTION getNombre_P RETURN VARCHAR2 IS
  BEGIN
    RETURN Nombre_P;
  END;
  
  MEMBER FUNCTION getEdad_A RETURN NUMBER IS
  BEGIN
    RETURN Edad_A;
  END;
  
  MEMBER FUNCTION getDNI_A RETURN VARCHAR2 IS
  BEGIN
    RETURN DNI_A;
  END;
  
  MEMBER FUNCTION getCodigo_As RETURN VARCHAR2 IS
  BEGIN
    RETURN Codigo_As;
  END;
END;
/

-- Crear la subclase "Profesores" que hereda de "Personas"
CREATE TYPE Profesores UNDER Personas (
  NCuenta_Pr VARCHAR2(20),  
  DNI_Pr VARCHAR2(20), 
  Codigo_As VARCHAR2(20),  
  CONSTRUCTOR FUNCTION Profesores(self IN OUT NOCOPY Profesores, DNI_P VARCHAR2, Nombre_P VARCHAR2, NCuenta_Pr VARCHAR2, DNI_Pr VARCHAR2, Codigo_As VARCHAR2) RETURN SELF AS RESULT,
  OVERRIDING MEMBER FUNCTION getDNI_P RETURN VARCHAR2,
  OVERRIDING MEMBER FUNCTION getNombre_P RETURN VARCHAR2,
  MEMBER FUNCTION getNCuenta_Pr RETURN VARCHAR2,
  MEMBER FUNCTION getDNI_Pr RETURN VARCHAR2,
  MEMBER FUNCTION getCodigo_As RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY Profesores AS
  CONSTRUCTOR FUNCTION Profesores(self IN OUT NOCOPY Profesores, DNI_P VARCHAR2, Nombre_P VARCHAR2, NCuenta_Pr VARCHAR2, DNI_Pr VARCHAR2, Codigo_As VARCHAR2) RETURN SELF AS RESULT IS
  BEGIN
    self.DNI_P := DNI_P;
    self.Nombre_P := Nombre_P;
    self.NCuenta_Pr := NCuenta_Pr;
    self.DNI_Pr := DNI_Pr;
    self.Codigo_As := Codigo_As;
    RETURN;
  END;
  
  OVERRIDING MEMBER FUNCTION getDNI_P RETURN VARCHAR2 IS
  BEGIN
    RETURN DNI_P;
  END;
  
  OVERRIDING MEMBER FUNCTION getNombre_P RETURN VARCHAR2 IS
  BEGIN
    RETURN Nombre_P;
  END;
  
  MEMBER FUNCTION getNCuenta_Pr RETURN VARCHAR2 IS
  BEGIN
    RETURN NCuenta_Pr;
  END;
  
  MEMBER FUNCTION getDNI_Pr RETURN VARCHAR2 IS
  BEGIN
    RETURN DNI_Pr;
  END;
  
  MEMBER FUNCTION getCodigo_As RETURN VARCHAR2 IS
  BEGIN
    RETURN Codigo_As;
  END;
END;
/

-- Crear el objeto Asignatura
CREATE TYPE Asignatura AS OBJECT (
  Codigo_As VARCHAR2(20),  
  Nombre_As VARCHAR2(50),  
  Nombre_Pr VARCHAR2(50),  
  CONSTRUCTOR FUNCTION Asignatura(self IN OUT NOCOPY Asignatura, Codigo_As VARCHAR2, Nombre_As VARCHAR2, Nombre_Pr VARCHAR2) RETURN SELF AS RESULT,
  MEMBER FUNCTION getCodigo_As RETURN VARCHAR2,
  MEMBER FUNCTION getNombre_As RETURN VARCHAR2,
  MEMBER FUNCTION getNombre_Pr RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY Asignatura AS
  CONSTRUCTOR FUNCTION Asignatura(self IN OUT NOCOPY Asignatura, Codigo_As VARCHAR2, Nombre_As VARCHAR2, Nombre_Pr VARCHAR2) RETURN SELF AS RESULT IS
  BEGIN
    self.Codigo_As := Codigo_As;
    self.Nombre_As := Nombre_As;
    self.Nombre_Pr := Nombre_Pr;
    RETURN;
  END;
  
  MEMBER FUNCTION getCodigo_As RETURN VARCHAR2 IS
  BEGIN
    RETURN Codigo_As;
  END;
  
  MEMBER FUNCTION getNombre_As RETURN VARCHAR2 IS
  BEGIN
    RETURN Nombre_As;
  END;
  
  MEMBER FUNCTION getNombre_Pr RETURN VARCHAR2 IS
  BEGIN
    RETURN Nombre_Pr;
  END;
END;
/

-- tabla para Alumnos
CREATE TABLE AlumnosTable OF Alumnos (
  PRIMARY KEY (DNI_P)
);

-- tabla para Profesores
CREATE TABLE ProfesoresTable OF Profesores (
  PRIMARY KEY (DNI_P)
);

-- tabla para Asignatura
CREATE TABLE AsignaturaTable OF Asignatura (
  PRIMARY KEY (Codigo_As)
);

CREATE TABLE Rel_Alumno_asignatura (
  ID_Rel NUMBER PRIMARY KEY,
  Alumno REF Alumnos,
  Asignatura REF Asignatura,
  Profesor REF Profesores
);

-- Insertar información en la tabla AlumnosTable
INSERT INTO AlumnosTable (DNI_P, Nombre_P, Edad_A, DNI_A, Codigo_As)
VALUES ('12345A', 'Erik Tamayo', 20, 'A1234', 'A001');

-- Insertar información en la tabla ProfesoresTable
INSERT INTO ProfesoresTable (DNI_P, Nombre_P, NCuenta_Pr, DNI_Pr, Codigo_As)
VALUES ('P001', 'Profesor Matemáticas', 'M1234', 'P1234', 'A001');

-- Insertar información en la tabla AsignaturaTable
INSERT INTO AsignaturaTable (Codigo_As, Nombre_As, Nombre_Pr)
VALUES ('A001', 'Matemáticas', 'Profesor Matemáticas');

-- tabla de relación para el alumno "Erik Tamayo"
INSERT INTO Rel_Alumno_asignatura (ID_Rel, Alumno, Asignatura, Profesor)
VALUES (
  1,
  (SELECT REF(a) FROM AlumnosTable a WHERE a.DNI_P = '12345A'),
  (SELECT REF(b) FROM AsignaturaTable b WHERE b.Codigo_As = 'A001'),
  (SELECT REF(c) FROM ProfesoresTable c WHERE c.NCuenta_Pr = 'P001')
);

-- tabla AsignaturaTable para otras dos materias
INSERT INTO AsignaturaTable (Codigo_As, Nombre_As, Nombre_Pr)
VALUES ('A002', 'Historia', 'Profesor Historia');

INSERT INTO AsignaturaTable (Codigo_As, Nombre_As, Nombre_Pr)
VALUES ('A003', 'Ciencias', 'Profesor Ciencias');

-- Insertar información en la tabla de relación para el mismo alumno con las nuevas asignaturas
INSERT INTO Rel_Alumno_asignatura (ID_Rel, Alumno, Asignatura, Profesor)
VALUES (
  2,
  (SELECT REF(a) FROM AlumnosTable a WHERE a.DNI_P = '12345A'),
  (SELECT REF(b) FROM AsignaturaTable b WHERE b.Codigo_As = 'A002'),
  (SELECT REF(c) FROM ProfesoresTable c WHERE c.NCuenta_Pr = 'P002')
);

INSERT INTO Rel_Alumno_asignatura (ID_Rel, Alumno, Asignatura, Profesor)
VALUES (
  3,
  (SELECT REF(a) FROM AlumnosTable a WHERE a.DNI_P = '12345A'),
  (SELECT REF(b) FROM AsignaturaTable b WHERE b.Codigo_As = 'A003'),
  (SELECT REF(c) FROM ProfesoresTable c WHERE c.NCuenta_Pr = 'P003')
);

SELECT * FROM AlumnosTable;

SELECT * FROM ProfesoresTable;

SELECT * FROM AsignaturaTable;

SELECT r.ID_Rel, a.Nombre_P AS Nombre_Alumno, b.Nombre_As AS Nombre_Asignatura, c.Nombre_P AS Nombre_Profesor
FROM Rel_Alumno_asignatura r
JOIN AlumnosTable a ON DEREF(r.Alumno) IS OF (Alumnos) AND DEREF(r.Alumno).DNI_A = 'A1234'
JOIN AsignaturaTable b ON DEREF(r.Asignatura) IS OF (Asignatura)
JOIN ProfesoresTable c ON DEREF(r.Profesor) IS OF (Profesores);
