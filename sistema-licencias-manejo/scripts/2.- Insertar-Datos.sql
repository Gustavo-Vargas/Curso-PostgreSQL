-- Insertar datos en tabla persona
INSERT INTO persona (dni, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, direccion, correo, telefono) VALUES
('45678912', 'Juan', 'Pérez', 'Gómez', '1990-05-15', 'Av. Los Pinos 123', 'juan.perez@email.com', '987654321'),
('23456789', 'María', 'López', 'Torres', '1985-11-20', 'Jr. Las Flores 456', 'maria.lopez@email.com', '912345678'),
('56789123', 'Carlos', 'Rodríguez', 'Mendoza', '1992-03-08', 'Calle Los Robles 789', 'carlos.rodriguez@email.com', '945678123'),
('34567891', 'Ana', 'García', 'Vargas', '1988-07-25', 'Av. Principal 234', 'ana.garcia@email.com', '932145678'),
('78912345', 'Pedro', 'Martínez', 'Rivas', '1995-09-12', 'Jr. Los Olivos 567', 'pedro.martinez@email.com', '974563210');

-- Insertar datos en tabla estacion
INSERT INTO estacion (ubicacion, estado) VALUES
('Sede Central - Lima', 'activa'),
('Terminal Terrestre - Arequipa', 'activa'),
('Centro Comercial Plaza Norte', 'activa'),
('Municipalidad de Trujillo', 'inactiva'),
('Terminal de Chiclayo', 'mantenimiento');

-- Insertar datos en tabla cita (corregida sin id_estado)
INSERT INTO cita (id_persona, id_estacion, fecha_hora, estado) VALUES
(1, 1, '2023-10-15 09:00:00', 'confirmada'),
(2, 2, '2023-10-16 10:30:00', 'pendiente'),
(3, 1, '2023-10-17 14:00:00', 'completada'),
(4, 3, '2023-10-18 11:00:00', 'cancelada'),
(5, 2, '2023-10-19 15:30:00', 'pendiente');

-- Insertar datos en tabla pago
INSERT INTO pago (id_cita, monto, fecha_pago, metodo_pago) VALUES
(1, 120.50, '2023-10-10 14:35:28', 'tarjeta'),
(2, 120.50, '2023-10-11 09:45:12', 'efectivo'),
(3, 150.00, '2023-10-12 11:20:05', 'transferencia'),
(5, 135.75, '2023-10-14 16:10:42', 'deposito');

-- Insertar datos en tabla licencia
INSERT INTO licencia (id_persona, numero_licencia, fecha_emision, fecha_vencimiento, categoria, estado) VALUES
(1, 'L-123456', '2022-10-20', '2027-10-20', 'A-I', 'vigente'),
(2, 'L-234567', '2021-05-15', '2026-05-15', 'B-I', 'vigente'),
(3, 'L-345678', '2020-08-10', '2025-08-10', 'A-IIa', 'suspendida'),
(4, 'L-456789', '2019-11-25', '2024-11-25', 'B-IIa', 'vigente'),
(5, 'L-567890', '2023-01-05', '2028-01-05', 'A-IIIa', 'vigente');

-- Insertar datos en tabla datos_biometrico
-- En una base de datos real, estos datos serían binarios verdaderos, pero aquí usamos NULL para simplificar
INSERT INTO datos_biometrico (id_licencia, huella_dactilar, foto, firma_digital) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL);

-- Insertar datos en tabla usuario
INSERT INTO usuario (nombre, apellido_paterno, apellido_materno, contraseña, rol, id_estacion) VALUES
('Admin', 'Sistema', 'Principal', 'hashed_password_1', 'administrador', 1),
('Operador1', 'García', 'León', 'hashed_password_2', 'operador', 1),
('Supervisor1', 'Torres', 'Santos', 'hashed_password_3', 'supervisor', 2),
('Operador2', 'Díaz', 'Ríos', 'hashed_password_4', 'operador', 3),
('Supervisor2', 'Campos', 'Rojas', 'hashed_password_5', 'supervisor', 1);