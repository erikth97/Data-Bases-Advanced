# Ejercicio: Preparación de la Base de Datos

## Preparación de la Base de Datos

- Utiliza la instalación del sistema manejador de base de datos MySQL, que realizaste en actividades previas.
- Crea una base de datos llamada `Empresa_tusiniciales`, en ella crea las siguientes tablas, la relación entre ellas será por el campo `ID_Dep`.
  
  **Empleados**
  
  - ID_Emp
  - Nombre
  - Apellido
  - Dirección
  - Codigo_Postal
  - Cargo
  - Salario
  - ID_Dep

  **Departamentos**
  
  - ID_Dep
  - Nombre_dep

- Una vez que hayas creado las tablas, inserta los siguientes departamentos en la tabla correspondiente:

  **Departamentos**
  
  - Mercadotecnia
  - Recursos Humanos
  - Contabilidad
  - Sistemas
  - Producción
  - Ventas
  - Almacen

- Inserta 3 registros en la tabla `Empleados` para cada departamento, para el campo salario, maneja diferentes montos que vayan desde los $10,000 hasta los $50,000.

## Creación de Vistas

- Crea una vista que muestre toda la información de los empleados incluyendo el nombre del departamento al que pertenece.
- Crea una vista que muestre el Nombre y Apellido de los empleados que pertenezcan al departamento de Ventas o Producción.
- Crea una vista que muestre todos los empleados que tengan un salario mayor a 20,000.
- Ingresa dos registros más en tu tabla `Empleados` con un salario de 25,000. Valida la actualización en la vista anterior.
