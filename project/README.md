# Proyecto Integrador: Base de Datos Orientada a Objetos con Oracle Database

## Objetivo
El objetivo del Proyecto Integrador es desarrollar una base de datos orientada a objetos utilizando Oracle Database y aplicar los conceptos básicos de la orientación a objetos.

## Planteamiento
Un centro de formación ha solicitado el desarrollo de su base de datos en un modelo orientado a objetos que permita gestionar la información de profesores, alumnos y asignaturas. A continuación, se presenta la estructura general:

### 1. Identificación de objetos y atributos

- Personas (objeto)
  - DNI_P
  - Nombre_P
  - Apellido_P
  - OtroAtributo_P

- Alumnos (objeto)
  - Edad_A
  - DNI_A
  - Codigo_As
  - OtroAtributo_A

- Profesores (objeto)
  - NCuenta_Pr
  - DNI_Pr
  - Codigo_As
  - OtroAtributo_Pr

- Asignaturas (objeto)
  - Codigo_As
  - Nombre_As
  - Nombre_Pr
  - OtroAtributo_As

### 1.2 Diagrama de objetos
Genera el correspondiente diagrama de objetos utilizando una herramienta de diagramado, como Lucidchart.

### 2. Creación de objetos en base de datos

#### 2.1 Creación de objeto raíz: Padre

Identifica cuál de tus objetos representa la superclase y genera el objeto correspondiente en tu base de datos a través de Oracle SQL Developer, con las siguientes características:
- Integra encapsulamiento para DNI_P y Nombre_P
- Considera que al ser el objeto raíz o superclase debe crearse como NOT FINAL
- Implementa los correspondientes métodos get para los atributos encapsulados.

En una base de datos orientada a objetos, la superclase se conoce como la clase base o la clase raíz, y en este caso, la superclase es Personas con encapsulamiento para los atributos DNI_P y Nombre_P. Se implementaron los métodos get correspondientes para acceder a estos atributos en objetos de la clase Personas y sus subclases.

#### 2.2 Creación de objetos: Hijos

Identifica los objetos que heredan del objeto raíz y créalos en tu base de datos. Integra encapsulamiento para sus atributos. Implementa los correspondientes métodos get para los atributos encapsulados.

En este punto se realiza la creación de dos subclases en tu base de datos: Alumnos y Profesores, que heredan del objeto raíz Personas con encapsulamiento para sus atributos y la implementación de los métodos get correspondientes. Ambos heredan de "Personas" y tienen sus propios atributos encapsulados: NCuenta_Pr, DNI_Pr y Codigo_As.

#### 2.3 Creación de objeto: Asignatura

El objeto asignatura es un objeto que no hereda del objeto raíz. Crea el objeto correspondiente Asignatura y encapsula sus atributos. Integra los correspondientes métodos get para los atributos encapsulados.

En este tercer punto, hemos creado el objeto Asignatura como una clase independiente que no hereda de Personas. Este tiene tres atributos encapsulados: Codigo_As para el código de la asignatura, Nombre_As para el nombre de la asignatura y Nombre_Pr para el nombre del profesor asociado a la asignatura. También hemos implementado los métodos get correspondientes para acceder a los atributos encapsulados. Esto permite gestionar información relacionada con asignaturas de forma independiente.
