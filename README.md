<h1>LOGISTIGA BASE DE DATOS</h1>
<h4>Creación de tablas</h4>

<h2> Caso de Uso 1: Registrar un Nuevo País</h2>
Descripción: Un administrador desea agregar un nuevo país a la base de datos.

```sql
INSERT INTO pais (pais_id, nombre) VALUES (8, 'Uruguay');
```

<h2> Caso de Uso 2: Registrar una Nueva Ciudad</h2> 
Descripción: Un administrador desea agregar una nueva ciudad asociada a un país existente.

```sql
INSERT INTO ciudad (ciudad_id, nombre, pais_id) VALUES (8, 'Montevideo', 8);
```

<h2> Caso de Uso 3: Registrar una Nueva Sucursal</h2> 
Descripción: Un administrador desea agregar una nueva sucursal asociada a una ciudad
existente.

```sql
INSERT INTO sucursal (sucursal_id, nombre, direccion, ciudad_id) VALUES (9, 'Sucursal Montevideo', 'Avenida 8 de octubre, Montevideo', 1);
```

<h2> Caso de Uso 4: Registrar un Nuevo Cliente</h2> 
Descripción: Un administrador desea registrar un nuevo cliente en la base de datos.

```sql
INSERT INTO cliente (cliente_id, nombre, email, direccion, telefono) VALUES (7, 'Mauricio Diaz', 'mau@gmail.com', 'crr12#7-53, Floridablanca', '+57	 3143807720');
```

<h2> Caso de Uso 5: Registrar un Nuevo Teléfono para un Cliente</h2> 
Descripción: Un administrador desea agregar un número de teléfono para un cliente existente.

```sql
INSERT INTO telefono_cliente (telefono_id, cliente_id, telefono) VALUES (7,7 '+57 3143807720');
```

<h2> Caso de Uso 6: Registrar un Nuevo Paquete</h2> 
Descripción: Un administrador desea registrar un nuevo paquete en la base de datos.

```sql
INSERT INTO paquete (paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, tipo_servicio_id, estado) VALUES
(7, 'JHU100', 2.5, '20x30x15 cm', 'Computador', 50.00, 1, 'En tránsito');
```

<h2> Caso de Uso 7: Registrar un Nuevo Envío</h2> 
Descripción: Un administrador desea registrar un nuevo envío, asociando un cliente, paquete,
ruta y sucursal.

```sql
INSERT INTO envio (envio_id, paquete_id, cliente_id, sucursal_id, fecha) VALUES
(7, 7, 7, 8, '2024-06-21 10:00:00');
```



<h2> Caso de Uso 8: Registrar un Nuevo Vehículo</h2> 
Descripción: Un administrador desea agregar un nuevo vehículo a la base de datos.

```sql
INSERT INTO vehiculo (vehiculo_id, placa, modelo_id) VALUES
(7, 'IIK-903', 3);
```

<h2> Caso de Uso 9: Registrar un Nuevo Conductor</h2> 
Descripción: Un administrador desea agregar un nuevo conductor a la base de datos.

```sql
INSERT INTO conductor (conductor_id, nombre, licencia) VALUES
(7, 'Laura Torres', 'DSF78764');
```

<h2> Caso de Uso 10: Registrar un Nuevo Teléfono para un
Conductor</h2> 
Descripción: Un administrador desea agregar un número de teléfono para un conductor
existente.

```sql
INSERT INTO telefono_conductor (telefono_id, conductor_id, telefono) VALUES
(7, 7, '+57 30023545678');
```

<h2> Caso de Uso 11: Asignar un Conductor a una Ruta y un
Vehículo</h2> 
Descripción: Un administrador desea asignar un conductor a una ruta específica utilizando un
vehículo.

```sql
INSERT INTO asignacion_ruta (asignacion_id, ruta_id, conductor_id, vehiculo_id, auxiliar_id) VALUES
(7, 7, 7, 7, 4);
```

<h2> Caso de Uso 12: Registrar un Nuevo Auxiliar</h2> 
Descripción: Un administrador desea agregar un nuevo auxiliar de reparto a la base de datos.

```sql
INSERT INTO auxiliar (auxiliar_id, nombre) VALUES
(7, 'Frank Gonzalez');
```

<h2> Caso de Uso 13: Asignar un Auxiliar a una Ruta</h2> 
Descripción: Un administrador desea asignar un auxiliar de reparto a una ruta específica.

```sql

```

<h2> Caso de Uso 14: Registrar un Evento de Seguimiento para un Paquete</h2> 

Descripción: Un administrador desea registrar un evento de seguimiento para un paquete.

```sql
INSERT INTO seguimiento (seguimiento_id, paquete_id, ubicacion, fecha, hora, estado) VALUES
(7, 7, 'Montevideo', '2024-06-21', '10:30:00', 'En tránsito');
```

<h2> Caso de Uso 15: Generar un Reporte de Envíos por Cliente</h2> 
Descripción: Un administrador desea generar un reporte de todos los envíos realizados por un
cliente específico.

```sql

```
<h2> Caso de Uso 16: Actualizar el Estado de un Paquete</h2> 
Descripción: Un administrador desea actualizar el estado de un paquete específico.

```sql
UPDATE 
```
<h2> Caso de Uso 17: Rastrear la Ubicación Actual de un Paquete</h2> 
Descripción: Un administrador desea rastrear la ubicación actual de un paquete específico.

```sql
SELECT ubicacion 

```

<h1> Casos Multitabla<h1>
<h2> Caso de Uso 1: Obtener Información Completa de Envíos</h2>
Descripción: Un administrador desea obtener la información completa de todos los envíos,
incluyendo detalles del cliente, paquete, ruta, conductor, y sucursal.

```sql
SELECT
```



<h2> Caso de Uso 2: Obtener Historial de Envíos de un Cliente</h2> 
Descripción: Un administrador desea obtener el historial completo de envíos de un cliente
específico, incluyendo detalles de los paquetes y los eventos de seguimiento.

```sql
c
```

<h2> Caso de Uso 3: Listar Conductores y sus Rutas Asignadas</h2> 
Descripción: Un administrador desea obtener una lista de todos los conductores y las rutas a las
que están asignados, incluyendo detalles del vehículo utilizado y la sucursal correspondiente.

```sql
c
```

<h2> Caso de Uso 4: Obtener Detalles de Rutas y Auxiliares
Asignados</h2> 
Descripción: Un administrador desea obtener detalles de todas las rutas, incluyendo los
auxiliares asignados a cada ruta.

```sql
c
```

<h2> Caso de Uso 5: Generar Reporte de Paquetes por Sucursal y
Estado</h2> 
Descripción: Un administrador desea generar un reporte de todos los paquetes agrupados por
sucursal y estado.

```sql
c
```

<h2> Caso de Uso 6: Obtener Información Completa de un Paquete
y su Historial de Seguimiento</h2> 
Descripción: Un administrador desea obtener la información completa de un paquete específico
y su historial de seguimiento.

```sql
c
```

<h1>Casos de uso Between, In y Not In</h1>
<h2> Caso de Uso 1: Obtener Paquetes Enviados Dentro de un
Rango de Fechas</h2> 
Descripción: Un administrador desea obtener todos los paquetes que fueron enviados dentro de
un rango de fechas específico.

```sql
SELECT 
	p.paquete_id,
	p.numero_seguimiento,
	p.contenido,
	e.fecha AS 'Fecha de envio'
FROM
	paquete p
JOIN envio e ON p.paquete_id = e.paquete_id
WHERE e.fecha BETWEEN '2024-06-16 08:00:00' AND '2024-06-21 10:00:00';
```

<h2> Caso de Uso 2: Obtener Paquetes con Ciertos Estados</h2> 
Descripción: Un administrador desea obtener todos los paquetes que tienen ciertos estados
específicos (por ejemplo, 'en tránsito' o 'entregado').

```sql

```

<h2> Caso de Uso 3: Obtener Paquetes Excluyendo Ciertos Estados</h2> 
Descripción: Un administrador desea obtener todos los paquetes excluyendo aquellos que tienen
ciertos estados específicos (por ejemplo, 'recibido' o 'retenido en aduana').

```sql
c
```

<h2> Caso de Uso 4: Obtener Clientes con Envíos Realizados
Dentro de un Rango de Fechas</h2> 
Descripción: Un administrador desea obtener todos los clientes que realizaron envíos dentro de
un rango de fechas específico.

```sql
c
```

<h2> Caso de Uso 5: Obtener Conductores Disponibles que No
Están Asignados a Ciertas Rutas</h2> 
Descripción: Un administrador desea obtener todos los conductores que no están asignados a
ciertas rutas específicas.

```sql
c
```

<h2> Caso de Uso 6: Obtener Información de Paquetes con Valor Declarado Dentro de un Rango Específico</h2> 

Descripción: Un administrador desea obtener todos los paquetes cuyo valor declarado está
dentro de un rango específico.

```sql
c
```

<h2> Caso de Uso 7: Obtener Auxiliares Asignados a Rutas
Específicas</h2> 
Descripción: Un administrador desea obtener todos los auxiliares de reparto que están
asignados a ciertas rutas específicas.

```sql
c
```

<h2> Caso de Uso 8: Obtener Envíos a Destinos Excluyendo Ciertas Ciudades</h2> 

Descripción: Un administrador desea obtener todos los envíos cuyos destinos no están en ciertas
ciudades específicas.

```sql
c
```

<h2> Caso de Uso 9: Obtener Seguimientos de Paquetes en un
Rango de Fechas</h2> 
Descripción: Un administrador desea obtener todos los eventos de seguimiento de paquetes que
ocurrieron dentro de un rango de fechas específico.

```sql
c
```

<h2> Caso de Uso 10: Obtener Clientes que Tienen Ciertos Tipos de Paquetes</h2> 

Descripción: Un administrador desea obtener todos los clientes que tienen paquetes de ciertos
tipos específicos (por ejemplo, 'nacional' o 'internacional').

```sql

```