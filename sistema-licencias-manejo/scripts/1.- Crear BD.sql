-- Database: sistema_licencias

-- DROP DATABASE IF EXISTS sistema_licencias;

CREATE DATABASE sistema_licencias
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en-US'
    LC_CTYPE = 'en-US'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Tabla persona
CREATE TABLE persona (
    id_persona SERIAL PRIMARY KEY,
    dni VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

-- Tabla estacion
CREATE TABLE estacion (
    id_estacion SERIAL PRIMARY KEY,
    ubicacion VARCHAR(100) NOT NULL,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('activa', 'inactiva', 'mantenimiento'))
);

-- Tabla cita (corregida sin id_estado)
CREATE TABLE cita (
    id_cita SERIAL PRIMARY KEY,
    id_persona INTEGER NOT NULL REFERENCES persona(id_persona),
    id_estacion INTEGER NOT NULL REFERENCES estacion(id_estacion),
    fecha_hora TIMESTAMP NOT NULL,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('pendiente', 'confirmada', 'completada', 'cancelada'))
);

-- Tabla pago
CREATE TABLE pago (
    id_pago SERIAL PRIMARY KEY,
    id_cita INTEGER UNIQUE NOT NULL REFERENCES cita(id_cita),
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago TIMESTAMP NOT NULL,
    metodo_pago VARCHAR(30) NOT NULL CHECK (metodo_pago IN ('tarjeta', 'efectivo', 'transferencia', 'deposito'))
);

-- Tabla licencia
CREATE TABLE licencia (
    id_licencia SERIAL PRIMARY KEY,
    id_persona INTEGER NOT NULL REFERENCES persona(id_persona),
    numero_licencia VARCHAR(30) UNIQUE NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    categoria VARCHAR(10) NOT NULL CHECK (categoria IN ('A-I', 'A-IIa', 'A-IIb', 'A-IIIa', 'A-IIIb', 'A-IIIc', 'B-I', 'B-IIa', 'B-IIb', 'B-IIc')),
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('vigente', 'vencida', 'suspendida', 'cancelada'))
);

-- Tabla datos_biometrico
CREATE TABLE datos_biometrico (
    id_biometrico SERIAL PRIMARY KEY,
    id_licencia INTEGER UNIQUE NOT NULL REFERENCES licencia(id_licencia),
    huella_dactilar BYTEA,
    foto BYTEA,
    firma_digital BYTEA
);

-- Tabla usuario
CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50) NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    rol VARCHAR(20) NOT NULL CHECK (rol IN ('administrador', 'operador', 'supervisor')),
    id_estacion INTEGER REFERENCES estacion(id_estacion)
);
