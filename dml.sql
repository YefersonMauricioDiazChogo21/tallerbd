INSERT INTO pais (pais_id, nombre) VALUES
(1, 'Estados Unidos'),
(2, 'Canadá'),
(3, 'México'),
(4, 'España'),
(5, 'Argentina'),
(6, 'Brasil'),
(7, 'Colombia');

INSERT INTO ciudad (ciudad_id, nombre, pais_id) VALUES
(1, 'Los Angeles', 1),
(2, 'Toronto', 2),
(3, 'Guadalajara', 3),
(4, 'Barcelona', 4),
(5, 'Buenos Aires', 5),
(6, 'São Paulo', 6),
(7, 'Bogota', 7);

INSERT INTO sucursal (sucursal_id, nombre, direccion, ciudad_id) VALUES
(1, 'Sucursal Central LA', '123 Main St, Los Angeles, CA', 1),
(2, 'Sucursal Central Toronto', '456 King St, Toronto, ON', 2),
(3, 'Sucursal Principal Guadalajara', '789 Av. Juárez, Guadalajara', 3),
(4, 'Sucursal Central Barcelona', 'Calle Gran Vía, Barcelona', 4),
(5, 'Sucursal Buenos Aires', 'Av. 9 de Julio, Buenos Aires', 5),
(6, 'Sucursal São Paulo', 'Av. Paulista, São Paulo', 6),
(7, 'Sucurlsal Bogota', 'Avenida el Dorado, Bogota', 7),
(8, 'Sucursal Bucaramanga', 'Avenida Gonzales Valencia, Bucaramanga', 7);

INSERT INTO cliente (cliente_id, nombre, email, direccion, telefono) VALUES
(1, 'Michael Johnson', 'michael.j@gmail.com', '123 Hollywood Blvd, Los Angeles, CA', '+1 213 555 1234'),
(2, 'Sophie Martin', 'sophie.m@gmail.com', '789 King St, Toronto, ON', '+1 416 555 5678'),
(3, 'Alejandro Ramírez', 'alejandro.r@gmail.com', 'Av. Reforma 456, Ciudad de México', '+52 55 1234 5678'),
(4, 'Elena García', 'elena.g@gmail.com', 'Calle Mayor 789, Madrid', '+34 91 9876 5432'),
(5, 'Diego Fernández', 'diego.f@gmail.com', 'Av. de Mayo 123, Buenos Aires', '+54 11 2345 6789'),
(6, 'Gabriela Silva', 'gabriela.s@gmail.com', 'Av. Paulista 456, São Paulo', '+55 11 8765 4321');

INSERT INTO telefono_cliente (telefono_id, cliente_id, telefono) VALUES
(1, 1, '+1 213 555 5678'),
(2, 2, '+1 416 555 7890'),
(3, 3, '+52 55 9876 5432'),
(4, 4, '+34 91 6543 2109'),
(5, 5, '+54 11 8765 4321'),
(6, 6, '+55 11 2345 6789');

INSERT INTO tipo_servicio (tipo_servicio_id, nombre) VALUES
(1, 'Express'),
(2, 'Estándar'),
(3, 'Económico');

INSERT INTO paquete (paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, tipo_servicio_id, estado) VALUES
(1, 'FGH459', 2.5, '20x30x15 cm', 'Libros', 50.00, 1, 'En tránsito'),
(2, 'JHU675', 5.1, '30x40x25 cm', 'Ropa', 80.00, 2, 'Entregado'),
(3, 'PLI782', 1.8, '15x20x10 cm', 'Electrónicos', 120.00, 3, 'En proceso'),
(4, 'JÑG207', 3.2, '25x35x20 cm', 'Juguetes', 70.00, 1, 'En tránsito'),
(5, 'MBO815', 4.5, '30x30x30 cm', 'Herramientas', 90.00, 2, 'Entregado'),
(6, 'PAH608', 2.0, '20x25x15 cm', 'Medicamentos', 150.00, 3, 'En tránsito');

INSERT INTO envio (envio_id, paquete_id, cliente_id, sucursal_id, fecha) VALUES
(1, 1, 1, 3, '2024-06-21 10:00:00'),
(2, 2, 2, 4, '2024-06-20 09:30:00'),
(3, 3, 3, 1, '2024-06-19 14:00:00'),
(4, 4, 4, 6, '2024-06-18 11:45:00'),
(5, 5, 5, 5, '2024-06-17 16:20:00'),
(6, 6, 6, 2, '2024-06-16 08:00:00');

INSERT INTO seguimiento (seguimiento_id, paquete_id, ubicacion, fecha, hora, estado) VALUES
(1, 1, 'Los Angeles', '2024-06-21', '10:30:00', 'En tránsito'),
(2, 2, 'Barcelona', '2024-06-20', '10:15:00', 'Entregado'),
(3, 3, 'Toronto', '2024-06-19', '15:00:00', 'En proceso'),
(4, 4, 'São Paulo', '2024-06-18', '12:00:00', 'En tránsito'),
(5, 5, 'Buenos Aires', '2024-06-17', '17:00:00', 'Entregado'),
(6, 6, 'Guadalajara', '2024-06-16', '09:00:00', 'En tránsito');

INSERT INTO ruta (ruta_id, descripcion) VALUES
(1, 'Ruta 1: Los Angeles - San Francisco'),
(2, 'Ruta 2: Toronto - Montreal'),
(3, 'Ruta 3: Ciudad de México - Monterrey'),
(4, 'Ruta 4: Madrid - Valencia'),
(5, 'Ruta 5: Buenos Aires - Rosario'),
(6, 'Ruta 6: São Paulo - Rio de Janeiro'),
(7, 'Ruta 7: Bogota - Bucaramanga');

INSERT INTO conductor (conductor_id, nombre, licencia) VALUES
(1, 'Daniel López', 'ABC987654'),
(2, 'Laura Martínez', 'DEF123456'),
(3, 'Samuel Johnson', 'GHI456789'),
(4, 'Carolina Fernández', 'JKL987654'),
(5, 'Mateo Pérez', 'MNO123456'),
(6, 'Luisa García', 'PQR789012');

INSERT INTO telefono_conductor (telefono_id, conductor_id, telefono) VALUES
(1, 1, '+1 213 555 6789'),
(2, 2, '+1 416 555 8901'),
(3, 3, '+52 55 8765 4321'),
(4, 4, '+34 91 7654 3210'),
(5, 5, '+54 11 6543 2109'),
(6, 6, '+55 11 5432 1098');

INSERT INTO marca (marca_id, nombre) VALUES
(1, 'Toyota'),
(2, 'Ford'),
(3, 'Chevrolet'),
(4, 'Honda'),
(5, 'Volkswagen'),
(6, 'Nissan');

INSERT INTO modelo (modelo_id, nombre, marca_id) VALUES
(1, 'Camry', 1),
(2, 'Fusion', 2),
(3, 'Spark', 3),
(4, 'Civic', 4),
(5, 'Golf', 5),
(6, 'Sentra', 6);

INSERT INTO vehiculo (vehiculo_id, placa, modelo_id) VALUES
(1, 'HHO-923', 1),
(2, 'YJU-406', 2),
(3, 'LÑP-639', 3),
(4, 'DFR-012', 4),
(5, 'FBY-315', 5),
(6, 'GTY-208', 6);

INSERT INTO auxiliar (auxiliar_id, nombre) VALUES
(1, 'Ana Sánchez'),
(2, 'Carlos Ramirez'),
(3, 'Luisa Flores'),
(4, 'David Martínez'),
(5, 'Laura Rodríguez'),
(6, 'Javier Gómez');

INSERT INTO asignacion_ruta (asignacion_id, ruta_id, conductor_id, vehiculo_id, auxiliar_id) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5),
(6, 6, 6, 6, 6);

INSERT INTO envio_asignacion (envio_asignacion_id, envio_id, asignacion_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

INSERT INTO historial_envios (historial_envio_id, cliente_id, paquete_id, fecha_envio) VALUES
(1, 1, 1, '2024-06-21 10:00:00'),
(2, 2, 2, '2024-06-20 09:30:00'),
(3, 3, 3, '2024-06-19 14:00:00'),
(4, 4, 4, '2024-06-18 11:45:00'),
(5, 5, 5, '2024-06-17 16:20:00'),
(6, 6, 6, '2024-06-16 08:00:00');
