-- 1
SELECT DISTINCT apellido
FROM clientes;
-- 2
SELECT c.nombre, c.apellido, l.nombre
FROM clientes AS c
  JOIN ciudades AS l
  ON c.localidad = l.id;
-- 3
SELECT c.nombre, p.nombre
FROM ciudades AS c
  JOIN provincias AS p
  ON c.provincia = p.id
WHERE p.nombre = 'Cordoba';
-- 4
SELECT p.descripcion, c.fecha
FROM compras AS c
  JOIN productos AS p
  ON c.producto = p.id
WHERE p.descripcion = 'Birome azul';
-- 5
SELECT p.descripcion, SUM(c.cant)
FROM compras AS c
  JOIN productos AS p
  ON c.producto = p.id
WHERE p.descripcion = 'Birome azul';
-- 6
SELECT c.nombre, p.nombre AS provincia, c.poblacion
FROM ciudades AS c
  JOIN provincias AS p ON c.provincia = p.id
WHERE c.poblacion > 500000;
-- 7
SELECT c.id, p.descripcion, p.precio, cant, p.precio*cant AS total
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id;
-- 8
SELECT c.fecha AS 'fecha y hora',
       CONCAT(cli.nombre, ' ', cli.apellido) AS cliente,
       p.descripcion AS item,
       p.precio,
       cant,
       p.precio*cant AS total
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
ORDER BY c.fecha;
-- 9
SELECT c.id,
       CONCAT(cli.calle, ' ', cli.altura, ', ', l.nombre) AS domicilio
FROM compras AS c
  JOIN clientes AS cli ON c.cliente = cli.id
  JOIN ciudades AS l ON cli.localidad = l.id;
-- 10
SELECT c.fecha AS 'fecha y hora',
       CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       p.descripcion AS item,
       p.precio,
       cant,
       p.precio*cant AS total
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
ORDER BY cli.apellido, cli.nombre;
-- 11
SELECT CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       SUM(p.precio*cant) AS 'total gastado'
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
GROUP BY cliente
ORDER BY cli.apellido, cli.nombre;
-- 12
SELECT CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       SUM(p.precio*cant) AS 'total gastado'
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
GROUP BY cliente
ORDER BY SUM(p.precio*cant) DESC
LIMIT 1;
-- 13
SELECT CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       SUM(p.precio*cant) AS 'total gastado'
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
GROUP BY cliente
HAVING SUM(p.precio*cant) >= 5000
ORDER BY cli.apellido, cli.nombre;
-- 14
SELECT c.fecha AS 'fecha y hora',
       CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       CONCAT(cli.calle, ' ', cli.altura, ', ', l.nombre, ', ', p.nombre) AS domicilio
FROM compras AS c
  JOIN clientes AS cli ON c.cliente = cli.id
  JOIN ciudades AS l ON cli.localidad = l.id
  JOIN provincias AS p ON l.provincia = p.id
ORDER BY c.fecha;
-- 15
SELECT p.nombre AS provincia, SUM(c.poblacion)
FROM ciudades AS c
  JOIN provincias AS p on c.provincia = p.id
GROUP BY p.nombre
HAVING SUM(c.poblacion) >= 1000000;
-- 16
SELECT c.fecha AS 'fecha y hora',
       CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       p.descripcion AS item,
       p.precio,
       cant,
       p.precio*cant AS total
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
WHERE cli.nombre = 'Juan' AND cli.apellido = 'Perez'
ORDER BY c.fecha;
-- 17
SELECT cli.id, cli.nombre, cli.apellido, c.nombre, p.nombre
FROM clientes AS cli
  JOIN ciudades AS c ON cli.localidad = c.id
  JOIN provincias AS p ON c.provincia = p.id
WHERE p.nombre IN ('Cordoba', 'Santa Fe');
-- 18
SELECT region, SUM(poblacion) AS poblacion_total
FROM provincias
GROUP BY region;
-- 19
SELECT region, SUM(poblacion) AS poblacion_total
FROM provincias
GROUP BY region
HAVING SUM(poblacion) < 3000000;
-- 20
SELECT c.fecha AS 'fecha y hora',
       CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       p.descripcion AS item,
       p.precio,
       cant,
       p.precio*cant AS total
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
WHERE p.precio*cant < 1000
ORDER BY cli.apellido, cli.nombre;
-- 21
SELECT p.region, SUM(c.poblacion)
FROM ciudades AS c
  JOIN provincias AS p ON c.provincia = p.id
GROUP BY region;
-- 22
SELECT c.fecha AS 'fecha y hora',
       CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       p.descripcion AS item,
       p.precio,
       cant,
       p.precio*cant AS total
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
ORDER BY cli.apellido, cli.nombre, total DESC;
-- 23
SELECT p.nombre AS provincia, COUNT(c.id) AS cant_ciudades
FROM ciudades AS c
  JOIN provincias AS p ON c.provincia = p.id
GROUP BY p.nombre;
-- 24
SELECT region, COUNT(id) AS cant_provincias
FROM provincias
GROUP BY region
HAVING COUNT(id) >= 4;
-- 25
SELECT c.nombre, p.nombre AS provincia, c.poblacion
FROM ciudades AS c
  JOIN provincias AS p ON c.provincia = p.id
WHERE p.nombre = 'Santa Fe' AND c.poblacion > 500000;
