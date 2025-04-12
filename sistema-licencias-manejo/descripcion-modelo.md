# Descripción del Modelo de Sistema de Licencias de Manejo

El modelo de datos para el sistema de licencias de manejo está diseñado para gestionar de manera eficiente todo el proceso, desde la programación de citas hasta la emisión de licencias. A continuación se describe cada entidad y sus relaciones:

1. **persona**:
   - Entidad central que almacena información de los ciudadanos que solicitan licencias.
   - Contiene datos personales como DNI, nombre, apellidos, fecha de nacimiento, etc.
   - Se relaciona con licencia (1:1) y cita (1:N).

2. **estacion**:
   - Representa los puntos físicos donde se realizan los trámites.
   - Almacena ubicación y estado de las estaciones.
   - Se relaciona con cita (1:N) y usuario (1:N).

3. **cita**:
   - Gestiona las citas programadas por los ciudadanos.
   - Contiene fecha, hora, estado y relaciones a persona y estación.
   - Implementa estados como pendiente, confirmada, completada y cancelada.
   - Se relaciona con pago (1:1).

4. **pago**:
   - Registra los pagos asociados a las citas.
   - Incluye monto, fecha de pago y método de pago.
   - Cada pago está asociado exactamente a una cita.

5. **licencia**:
   - Almacena las licencias de conducir emitidas.
   - Incluye categoría, fechas de emisión y vencimiento.
   - Se relaciona con persona (N:1) y datos_biometrico (1:1).

6. **datos_biometrico**:
   - Guarda la información biométrica asociada a cada licencia.
   - Incluye huella dactilar, foto y firma digital.
   - Cada registro está asociado exactamente a una licencia.

7. **usuario**:
   - Controla el acceso al sistema.
   - Define roles como administrador, operador y supervisor.
   - Cada usuario puede estar asignado a una estación específica.

## Relaciones principales:
- Una persona puede tener múltiples citas, pero una cita corresponde a una sola persona.
- Una persona puede tener una sola licencia activa (relación 1:1).
- Una estación puede gestionar múltiples citas y tener múltiples usuarios.
- Cada licencia tiene asociado exactamente un registro biométrico.
- Cada cita puede tener un solo pago asociado.

Este diseño normalizado minimiza la redundancia de datos y garantiza la integridad referencial mediante el uso de claves foráneas y restricciones adecuadas.
