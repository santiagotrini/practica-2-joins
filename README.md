# Practica 2 - Joins

## Instrucciones de instalación

1. Instalar MySQL / MariaDB. En Termux `pkg install mariadb`.
2. Asegurarse de poder ejecutar `mysql` en la terminal. En Termux `mysqld_safe &` y luego `mysql`.
3. Clonar este repo `git clone https://github.com/santiagotrini/practica-2-joins`.
4. Cambiar al directorio del repo `cd practica-2-joins`.
5. Crear la base de datos `mysql < db_schema.sql`.
6. Poblar la base de datos `mysql < db_data.sql`.
7. Logearse a la base de datos `mysql practica_2`.

## Ejercicios

1. Buscar todos los apellidos de la tabla clientes, sin repetir filas.
2. Dar una lista de los clientes indicando: nombre, apellido y nombre de ciudad.
3. Buscar las ciudades de la provincia de Cordoba.
4. Indicar fecha y hora de las ventas de biromes azules.
5. ¿Cuantas biromes azules se vendieron?
6. Buscar las ciudades con mas de 500000 habitantes, indicando nombre, provincia y poblacion.
7. Indicar el total gastado en cada compra.
8. Escribir una *query* que produzca el siguiente listado.

```
+---------------------+--------------------+--------------------------------+--------+------+---------+
| fecha y hora        | cliente            | item                           | precio | cant | total   |
+---------------------+--------------------+--------------------------------+--------+------+---------+
| 2022-05-12 17:30:00 | Juan Perez         | Resma A4                       | 182.99 |   10 | 1829.90 |
| 2022-05-12 17:35:00 | Jorge Rodriguez    | Marcador de pizarra negro      |  99.99 |   20 | 1999.80 |
| 2022-05-13 17:40:00 | Jorge Rodriguez    | Cuaderno 48 hojas cuadriculado | 119.99 |   30 | 3599.70 |
| 2022-05-13 17:45:00 | Juana Martinez     | Marcador de pizarra negro      |  99.99 |   20 | 1999.80 |
| 2022-05-14 16:15:00 | Maria Garcia       | Tijera                         |  89.99 |   20 | 1799.80 |
| 2022-05-15 15:10:00 | Antonia Perez      | Birome roja                    |  13.99 |   10 |  139.90 |
| 2022-05-15 15:15:00 | Graciela Rodriguez | Birome verde                   |  13.99 |   50 |  699.50 |
| 2022-05-15 18:00:00 | Juana Martinez     | Resma A4                       | 169.99 |   50 | 8499.50 |
| 2022-05-16 09:00:00 | Pedro Gonzalez     | Adhesivo para papel            |  59.99 |   15 |  899.85 |
| 2022-05-16 11:30:00 | Mario Martinez     | Marcador de pizarra negro      |  99.99 |    5 |  499.95 |
| 2022-05-16 17:10:00 | Mario Martinez     | Marcador de pizarra azul       |  99.99 |   10 |  999.90 |
| 2022-05-16 17:30:00 | Juan Perez         | Marcador de pizarra rojo       |  99.99 |   30 | 2999.70 |
| 2022-05-16 17:40:00 | Maria Garcia       | Marcador de pizarra verde      |  99.99 |   25 | 2499.75 |
| 2022-05-17 10:30:00 | Juan Perez         | Cuaderno 48 hojas rayado       | 119.99 |   15 | 1799.85 |
| 2022-05-17 10:40:00 | Maria Garcia       | Cuaderno 48 hojas cuadriculado | 119.99 |   15 | 1799.85 |
| 2022-05-17 15:00:00 | Mario Martinez     | Birome azul                    |  13.99 |   20 |  279.80 |
| 2022-05-17 15:50:00 | Graciela Rodriguez | Birome negra                   |  13.99 |   10 |  139.90 |
+---------------------+--------------------+--------------------------------+--------+------+---------+
```

9. Indicar para cada compra el *id* de compra y la dirección de envío.
10. Escribir una *query* que produzca el siguiente listado.

```
+---------------------+---------------------+--------------------------------+--------+------+---------+
| fecha y hora        | cliente             | item                           | precio | cant | total   |
+---------------------+---------------------+--------------------------------+--------+------+---------+
| 2022-05-14 16:15:00 | GARCIA, Maria       | Tijera                         |  89.99 |   20 | 1799.80 |
| 2022-05-16 17:40:00 | GARCIA, Maria       | Marcador de pizarra verde      |  99.99 |   25 | 2499.75 |
| 2022-05-17 10:40:00 | GARCIA, Maria       | Cuaderno 48 hojas cuadriculado | 119.99 |   15 | 1799.85 |
| 2022-05-16 09:00:00 | GONZALEZ, Pedro     | Adhesivo para papel            |  59.99 |   15 |  899.85 |
| 2022-05-13 17:45:00 | MARTINEZ, Juana     | Marcador de pizarra negro      |  99.99 |   20 | 1999.80 |
| 2022-05-15 18:00:00 | MARTINEZ, Juana     | Resma A4                       | 169.99 |   50 | 8499.50 |
| 2022-05-16 11:30:00 | MARTINEZ, Mario     | Marcador de pizarra negro      |  99.99 |    5 |  499.95 |
| 2022-05-16 17:10:00 | MARTINEZ, Mario     | Marcador de pizarra azul       |  99.99 |   10 |  999.90 |
| 2022-05-17 15:00:00 | MARTINEZ, Mario     | Birome azul                    |  13.99 |   20 |  279.80 |
| 2022-05-15 15:10:00 | PEREZ, Antonia      | Birome roja                    |  13.99 |   10 |  139.90 |
| 2022-05-12 17:30:00 | PEREZ, Juan         | Resma A4                       | 182.99 |   10 | 1829.90 |
| 2022-05-16 17:30:00 | PEREZ, Juan         | Marcador de pizarra rojo       |  99.99 |   30 | 2999.70 |
| 2022-05-17 10:30:00 | PEREZ, Juan         | Cuaderno 48 hojas rayado       | 119.99 |   15 | 1799.85 |
| 2022-05-15 15:15:00 | RODRIGUEZ, Graciela | Birome verde                   |  13.99 |   50 |  699.50 |
| 2022-05-17 15:50:00 | RODRIGUEZ, Graciela | Birome negra                   |  13.99 |   10 |  139.90 |
| 2022-05-12 17:35:00 | RODRIGUEZ, Jorge    | Marcador de pizarra negro      |  99.99 |   20 | 1999.80 |
| 2022-05-13 17:40:00 | RODRIGUEZ, Jorge    | Cuaderno 48 hojas cuadriculado | 119.99 |   30 | 3599.70 |
+---------------------+---------------------+--------------------------------+--------+------+---------+
```

11. Continuando con la consulta del ejercicio anterior, mostrar el total que lleva gastado cada cliente.
12. ¿Cual es el cliente que gastó más?
13. Dar los nombres de los clientes que gastaron $5000 o mas.
14. El correo necesita imprimir las etiquetas con el nombre del cliente y la dirección para cada envío. Dar una lista con esos datos para cada compra ordenados por fecha. En una columna apellido y nombre de cliente, en la otra el domicilio indicando: calle, altura, localidad y provincia.
15. Indicar nombre de provincia y poblacion total de sus ciudades para la tabla `ciudades`. Mostrar solamente las provincias que sumen más de un millón de habitantes.
16. Mostrar las compras de Juan Perez ordenadas por fecha. Indicar artículo, precio, cantidad y total de la compra.
17. Buscar el nombre y apellido de los clientes que viven en Santa Fe o Cordoba.
18. Dar el total de población para cada región de la Argentina.
19. Listar las regiones del país que no lleguen a tres millones de habitantes.
20. Mostrar las compras de menos de mil pesos en un listado como el del ejercicio 10.
21. Sumar la población de todas las ciudades de la tabla `ciudades` por region del país.
22. Dar la lista de todas las compras como en el ejercicio 10, ordenando por apellido y nombre de manera ascendente y por total de la compra de manera descendente.
23. Contar la cantidad de ciudades en la tabla `ciudades` por provincia.
24. Buscar las regiones del país con cuatro o más provincias.
25. Buscar las ciudades de la provincia de Santa Fe con más de quinientos mil habitantes.

## Conceptos

- Introducción a los *joins*: `INNER JOIN` y `ON` en la claúsula `FROM`.
- Seleccionar filas sin repeticiones usando `DISTINCT`.
- Claúsulas `GROUP BY` y `HAVING`.
- Funciones de agregado por grupos.
- Funciones para manipular *strings*: `CONCAT`, `UPPER` y `LOWER`.
