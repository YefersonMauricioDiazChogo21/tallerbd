-- Tabla país-----
------------------
CREATE TABLE pais (
    pais_id INT,
    nombre VARCHAR(100) NOT NULL,
    CONSTRAINT pk_pais_id PRIMARY KEY (pais_id)
);

-- Tabla ciudad---
------------------
CREATE TABLE ciudad (
    ciudad_id INT,
    nombre VARCHAR(100) NOT NULL,
    pais_id INT,
    CONSTRAINT pk_ciudad_id PRIMARY KEY (ciudad_id),
    CONSTRAINT fk_ciudad_pais FOREIGN KEY (pais_id) REFERENCES pais(pais_id)
);

-- Tabla sucursal-
------------------
CREATE TABLE sucursal (
    sucursal_id INT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    ciudad_id INT,
    CONSTRAINT pk_sucursal_id PRIMARY KEY (sucursal_id),
    CONSTRAINT fk_sucursal_ciudad FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

-- Tabla cliente--
------------------
CREATE TABLE cliente (
    cliente_id INT,
    nombre VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    CONSTRAINT pk_cliente_id PRIMARY KEY (cliente_id)
);

-- Tabla telefono_cliente-
--------------------------
CREATE TABLE telefono_cliente (
    telefono_id INT AUTO_INCREMENT,
    cliente_id INT,
    telefono VARCHAR(20) NOT NULL,
    CONSTRAINT pk_telefono_cliente_id PRIMARY KEY (telefono_id),
    CONSTRAINT fk_telefono_cliente_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

-- Tabla tipo_servicio-
-----------------------
CREATE TABLE tipo_servicio (
    tipo_servicio_id INT,
    nombre VARCHAR(100) NOT NULL,
    CONSTRAINT pk_tipo_id PRIMARY KEY (tipo_servicio_id)
);

-- Tabla paquete--
------------------
CREATE TABLE paquete (
    paquete_id INT,
    numero_seguimiento VARCHAR(50) NOT NULL UNIQUE,
    peso DECIMAL(10, 2) NOT NULL,
    dimensiones VARCHAR(50),
    contenido VARCHAR(255),
    valor_declarado DECIMAL(15, 2),
    tipo_servicio_id INT,
    estado VARCHAR(50) NOT NULL,
    CONSTRAINT pk_paquete_id PRIMARY KEY (paquete_id),
    CONSTRAINT fk_paquete_tipo_servicio FOREIGN KEY (tipo_servicio_id) REFERENCES tipo_servicio(tipo_servicio_id)
);

-- Tabla envio----
------------------
CREATE TABLE envio (
    envio_id INT,
    paquete_id INT,
    cliente_id INT,
    sucursal_id INT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_envio_id PRIMARY KEY (envio_id),
    CONSTRAINT fk_envio_paquete FOREIGN KEY (paquete_id) REFERENCES paquete(paquete_id),
    CONSTRAINT fk_paquete_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id),
    CONSTRAINT fk_paquete_sucursal FOREIGN KEY (sucursal_id) REFERENCES sucursal(sucursal_id)
);

-- Tabla seguimiento-
---------------------
CREATE TABLE seguimiento (
    seguimiento_id INT,
    paquete_id INT,
    ubicacion VARCHAR(255) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    estado VARCHAR(50) NOT NULL,
    CONSTRAINT pk_seguimiento_id PRIMARY KEY (seguimiento_id),
    CONSTRAINT fk_seguimiento_paquete FOREIGN KEY (paquete_id) REFERENCES paquete(paquete_id)
);

-- Tabla ruta-----
------------------
CREATE TABLE ruta (
    ruta_id INT,
    descripcion VARCHAR(255) NOT NULL,
    CONSTRAINT pk_ruta_id PRIMARY KEY (ruta_id)
);

-- Tabla conductor--
--------------------
CREATE TABLE conductor (
    conductor_id INT,
    nombre VARCHAR(30) NOT NULL,
    licencia VARCHAR(50) NOT NULL,
    CONSTRAINT pk_conductor_id PRIMARY KEY (conductor_id)
);

-- Tabla telefono_conductor--
-----------------------------
CREATE TABLE telefono_conductor (
    telefono_id INT AUTO_INCREMENT,https://accounts.google.com/SignOutOptions?hl=es-419&continue=https://classroom.google.com/&ec=GBRAiQI
    conductor_id INT,
    telefono VARCHAR(20) NOT NULL,
    CONSTRAINT pk_telefono_id PRIMARY KEY (telefono_id),
    CONSTRAINT fk_telefono_conductor_conductor FOREIGN KEY (conductor_id) REFERENCES conductor(conductor_id)
);

-- Tabla conductor_ruta--
-------------------------
CREATE TABLE conductor_ruta (
    conductor_ruta_id INT AUTO_INCREMENT,
    conductor_id INT,
    ruta_id INT,
    CONSTRAINT pk_conductor_ruta_id PRIMARY KEY (conductor_ruta_id)
    CONSTRAINT fk_conductor_ruta_conductor FOREIGN KEY (conductor_id) REFERENCES conductor(conductor_id),
    CONSTRAINT fk_conductor_ruta_ruta FOREIGN KEY (ruta_id) REFERENCES ruta(ruta_id)
);

-- Tabla marca---
-----------------
CREATE TABLE marca (
    marca_id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT pk_marca_id PRIMARY KEY (marca_id)
);

-- Tabla modelo--
-----------------
CREATE TABLE modelo (
    modelo_id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    marca_id INT,
    CONSTRAINT pk_modelo_id PRIMARY KEY (modelo_id),
    CONSTRAINT fk_modelo_marca FOREIGN KEY (marca_id) REFERENCES marca(marca_id)
);

--tabla vehiculo-
-----------------
CREATE TABLE vehiculo (
    vehiculo_id INT AUTO_INCREMENT,
    placa VARCHAR(20) NOT NULL UNIQUE,
    modelo_id INT,
    CONSTRAINT pk_vehiculo_id PRIMARY KEY (vehiculo_id),
    CONSTRAINT fk_vehiculo_modelo FOREIGN KEY (modelo_id) REFERENCES modelo(modelo_id)
);

-- Tabla auxiliar-
------------------
CREATE TABLE auxiliar (
    auxiliar_id INT,
    nombre VARCHAR(100) NOT NULL,
    CONSTRAINT pk_auxiliar_id PRIMARY KEY (auxiliar_id)
);

-- Tabla asignacion_ruta-
-------------------------
CREATE TABLE asignacion_ruta (
    asignacion_id INT,
    ruta_id INT,
    conductor_id INT,
    vehiculo_id INT,
    auxiliar_id INT,
    CONSTRAINT pk_asignacion_ruta_id PRIMARY KEY (asignacion_id),
    CONSTRAINT fk_asignacion_ruta_ruta FOREIGN KEY (ruta_id) REFERENCES ruta(ruta_id),
    CONSTRAINT fk_asignacion_ruta_conductor FOREIGN KEY (conductor_id) REFERENCES conductor(conductor_id),
    CONSTRAINT fk_asignacion_ruta_vehiculo FOREIGN KEY (vehiculo_id) REFERENCES vehiculo(vehiculo_id),
    CONSTRAINT fk_asignacion_ruta_auxiliar FOREIGN KEY (auxiliar_id) REFERENCES auxiliar(auxiliar_id)
);

-- Tabla envio_asignacion-
--------------------------
CREATE TABLE envio_asignacion (
    envio_asignacion_id INT AUTO_INCREMENT,
    envio_id INT,
    asignacion_id INT,
    CONSTRAINT pk_envio_asignacion_id PRIMARY KEY (envio_asignacion_id),
    CONSTRAINT fk_envio_asignacion_envio FOREIGN KEY (envio_id) REFERENCES envio(envio_id),
    CONSTRAINT fk_envio_asignacion_asignacion FOREIGN KEY (asignacion_id) REFERENCES asignacion_ruta(asignacion_id)
);


-- Tabla historial_envios-
--------------------------
CREATE TABLE historial_envios (
    historial_envio_id INT,
    cliente_id INT,
    paquete_id INT,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_historial_envio_id PRIMARY KEY (historial_envio_id),
    CONSTRAINT fk_historial_envios_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id),
    CONSTRAINT fk_historial_envios_paquete FOREIGN KEY (paquete_id) REFERENCES paquete(paquete_id)
);
