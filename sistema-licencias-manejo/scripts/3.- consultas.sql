-- 0.- Mostrar datos de tablas
SELECT * FROM cita;
SELECT * FROM datos_biometrico;
SELECT * FROM estacion;
SELECT * FROM licencia;
SELECT * FROM pago;
SELECT * FROM persona;
SELECT * FROM usuario;

-- 1. Listar todas las citas pendientes con información de la persona y estación
SELECT c.id_cita, c.fecha_hora, c.estado, 
       p.nombre, p.apellido_paterno, p.apellido_materno, p.dni,
       e.ubicacion as estacion
FROM cita c
JOIN persona p ON c.id_persona = p.id_persona
JOIN estacion e ON c.id_estacion = e.id_estacion
WHERE c.estado = 'pendiente'
ORDER BY c.fecha_hora;

-- 2. Mostrar todas las licencias vigentes con datos de la persona
SELECT l.id_licencia, l.numero_licencia, l.categoria, l.fecha_emision, l.fecha_vencimiento,
       p.nombre, p.apellido_paterno, p.apellido_materno, p.dni
FROM licencia l
JOIN persona p ON l.id_persona = p.id_persona
WHERE l.estado = 'vigente'
ORDER BY l.fecha_vencimiento;

-- 3. Obtener el total de pagos por método de pago
SELECT metodo_pago, COUNT(*) as cantidad, SUM(monto) as total
FROM pago
GROUP BY metodo_pago
ORDER BY total DESC;

-- 4. Mostrar usuarios por estación
SELECT e.ubicacion as estacion, COUNT(u.id_usuario) as total_usuarios,
       STRING_AGG(u.nombre || ' ' || u.apellido_paterno, ', ') as usuarios
FROM estacion e
LEFT JOIN usuario u ON e.id_estacion = u.id_estacion
GROUP BY e.id_estacion, e.ubicacion;

-- 5. Buscar persona por DNI o nombre y mostrar sus licencias y citas
SELECT p.id_persona, p.dni, p.nombre, p.apellido_paterno, p.apellido_materno,
       l.numero_licencia, l.categoria, l.estado as estado_licencia,
       c.id_cita, c.fecha_hora, c.estado as estado_cita
FROM persona p
LEFT JOIN licencia l ON p.id_persona = l.id_persona
LEFT JOIN cita c ON p.id_persona = c.id_persona
WHERE p.dni = '45678912' OR 
      (p.nombre LIKE '%Juan%' AND p.apellido_paterno LIKE '%Pérez%')
ORDER BY c.fecha_hora DESC;
