# Actividad4 - Base de Datos y Funciones

Este repositorio contiene la información y los scripts relacionados con la creación de una base de datos llamada 'Actividad4' y la implementación de un trigger, procedimiento y función en MySQL.

## Creación de la Tabla 'alumnos'

Para empezar, creamos una base de datos llamada 'Actividad4' y una tabla 'alumnos' con las siguientes columnas:

- `id` (entero sin signo)
- `nombre` (cadena de caracteres)
- `apellido1` (cadena de caracteres)
- `apellido2` (cadena de caracteres)
- `nota` (número real)

## Trigger 'trigger_check_nota_before_insert'

A continuación, creamos un trigger que se ejecuta antes de una operación de inserción en la tabla 'alumnos'. Este trigger tiene las siguientes características:

- Nombre: `trigger_check_nota_before_insert`
- Se ejecuta sobre la tabla 'alumnos'.
- Se ejecuta antes de una operación de inserción.
- Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda como 0.
- Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se guarda como 10.

Asegúrate de ejecutar varias sentencias de inserción en la tabla 'alumnos' y verifica que el trigger funcione correctamente.

## Procedimiento para Consulta de Alumnos por Nota

Se ha creado un procedimiento que recibe como parámetro una nota y realiza una consulta sobre la tabla 'alumnos' para obtener todos los alumnos que tienen la nota igual o mayor a la ingresada.

## Función para Obtener el Número Total de Registros

Por último, hemos implementado una función en la base de datos 'Actividad4' que devuelve el número total de registros en la tabla 'alumnos'.

¡Explora este repositorio para obtener más detalles y scripts relacionados con esta actividad!




