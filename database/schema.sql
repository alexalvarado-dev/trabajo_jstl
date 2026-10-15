-- =====================================================
-- Trabajo JSTL - esquema de la tabla `empleados`
-- Uso: pegar este archivo completo en la pestaña SQL de
-- phpMyAdmin (Free MySQL Hosting) y pulsar "Continuar".
-- No incluye CREATE DATABASE/USE a proposito: la base ya
-- viene creada por el hosting con el nombre sqlXXXXXXXX
-- que llega por correo.
-- =====================================================

CREATE TABLE IF NOT EXISTS empleados (
    id INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100) DEFAULT NULL,
    edad INT DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES
('Ana', 'García', 'López', 30),
('Luis', 'Pérez', 'Martínez', 25);