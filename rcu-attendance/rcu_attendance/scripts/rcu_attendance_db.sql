-- ================================= DDL =================================

-- Crear la base de datos de asistencia de RCU
DROP DATABASE IF EXISTS rcu_attendance;
CREATE DATABASE rcu_attendance;
USE rcu_attendance;

-- Crear la tabla usuario
CREATE TABLE IF NOT EXISTS usuario (
  id_usuario VARCHAR(15),
  nombre VARCHAR(100) NOT NULL,
  contraseña VARCHAR(100) NOT NULL,
  celular VARCHAR(15) NULL,
  es_admin BOOL NOT NULL,
  PRIMARY KEY(id_usuario)
);

-- Crear la tabla asistencia
CREATE TABLE IF NOT EXISTS asistencia (
  id_asistencia INTEGER AUTO_INCREMENT,
  id_usuario VARCHAR(15),
  fechahora_entrada DATETIME NOT NULL,
  fechahora_salida DATETIME NOT NULL,
  PRIMARY KEY(id_asistencia),
  FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
  ON DELETE CASCADE
  ON UPDATE CASCADE
);

-- Crear la tabla dependencia
CREATE TABLE IF NOT EXISTS dependencia (
  id_dependencia INTEGER AUTO_INCREMENT,
  nombre VARCHAR(100),
  referencia_ubicacion VARCHAR(100),
  PRIMARY KEY(id_dependencia)
);

-- Crear la tabla orden
CREATE TABLE IF NOT EXISTS orden (
  id_orden VARCHAR(15),
  id_dependencia INTEGER,
  descripcion VARCHAR(100) NOT NULL,
  fechahora_inicio DATETIME NOT NULL,
  fechahora_fin DATETIME NOT NULL,
  PRIMARY KEY(id_orden),
  FOREIGN KEY(id_dependencia) REFERENCES dependencia(id_dependencia)
);

-- Crear la tabla de usuario orden
CREATE TABLE IF NOT EXISTS usuario_orden (
  id_usuario VARCHAR(15),
  id_orden VARCHAR(15),
  PRIMARY KEY(id_usuario, id_orden),
  FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  FOREIGN KEY(id_orden) REFERENCES orden(id_orden)
  ON DELETE CASCADE
  ON UPDATE CASCADE
);

-- ================================= DML =================================

-- Insertar datos en la tabla usuario
USE rcu_attendance;
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('87654321', 'INGENIERO DE RCU NUMERO 1', 'ingenierorcu1', '987654321', 1);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('87654322', 'INGENIERO DE RCU NUMERO 2', 'ingenierorcu2', '987654321', 1);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('87654323', 'INGENIERO DE RCU NUMERO 3', 'ingenierorcu3', '987654321', 1);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('87654324', 'INGENIERO DE RCU NUMERO 4', 'ingenierorcu4', '987654321', 1);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('87654325', 'INGENIERO DE RCU NUMERO 5', 'ingenierorcu5', '987654321', 1);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('87654326', 'INGENIERO DE RCU NUMERO 6', 'ingenierorcu6', '987654321', 1);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('12345671', 'PRACTICANTE DE RCU NUMERO 1', 'practicantercu1', '987654321', 0);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('12345672', 'PRACTICANTE DE RCU NUMERO 2', 'practicantercu3', '987654321', 0);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('12345673', 'PRACTICANTE DE RCU NUMERO 3', 'practicantercu3', '987654321', 0);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('12345674', 'PRACTICANTE DE RCU NUMERO 4', 'practicantercu4', '987654321', 0);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('12345675', 'PRACTICANTE DE RCU NUMERO 5', 'practicantercu5', '987654321', 0);
INSERT INTO usuario(id_usuario, nombre, contraseña, celular, es_admin)
VALUES('12345676', 'PRACTICANTE DE RCU NUMERO 6', 'practicantercu6', '987654321', 0);

-- Insertar datos en la tabla asistencia
USE rcu_attendance;
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345671', '2023-01-03 08:00:56', '2023-01-03 13:01:14');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345672', '2023-01-03 08:05:12', '2023-01-03 13:10:22');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345673', '2023-01-03 08:06:11', '2023-01-03 13:11:31');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345674', '2023-01-03 08:10:36', '2023-01-03 13:12:43');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345675', '2023-01-03 08:15:36', '2023-01-03 13:13:55');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345676', '2023-01-03 08:15:59', '2023-01-03 13:15:17');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345675', '2023-01-04 08:00:26', '2023-01-04 13:03:29');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345674', '2023-01-04 08:02:37', '2023-01-04 13:08:30');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345672', '2023-01-04 08:07:18', '2023-01-04 13:09:48');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345673', '2023-01-04 08:18:50', '2023-01-04 13:10:56');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345671', '2023-01-04 08:22:04', '2023-01-04 13:11:14');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345676', '2023-01-04 08:29:30', '2023-01-04 13:12:22');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345675', '2023-01-05 08:05:05', '2023-01-05 13:06:31');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345673', '2023-01-05 08:07:18', '2023-01-05 13:07:43');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345674', '2023-01-05 08:08:02', '2023-01-05 13:08:55');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345676', '2023-01-05 08:08:10', '2023-01-05 13:09:17');
INSERT INTO asistencia(id_usuario, fechahora_entrada, fechahora_salida)
VALUES('12345672', '2023-01-05 08:10:45', '2023-01-05 13:10:29');

-- Insertar datos en la tabla dependencia
USE rcu_attendance;
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('ESCUELA PROFESIONAL DE ECONOMIA', 'CERCA AL TRICENTENARIO');
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('ORGANO DE CONTROL INSTITUCIONAL', 'INSTITUTO DE IDIOMAS ULTIMO PISO');
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('ESCUELA PROFESIONAL DE ADMINISTRACION', 'CERCA AL TRICENTENARIO');
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('GRADOS Y TITULOS DE LA UNIVERSIDAD', 'INSTITUTO DE IDIOMAS SEGUNDO PISO');
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('ESCALOFON Y PENSIONES', 'COSTADO DE RED DE COMUNICACIONES DE LA UNIVERSIDAD');
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('ESCUELA PROFESIONAL DE INGENIERIA INFORMATICA Y DE SISTEMAS', 'CERCA A LAS EMPANADAS');
INSERT INTO dependencia(nombre, referencia_ubicacion)
VALUES('ESCUELA PROFESIONAL DE INGENIERIA ELECTRONICA', 'CERCA AL CEPRU');

-- Insertar datos en la tabla orden
USE rcu_attendance;
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0001', '1', 'CONFIGURACION DE UNA IMPRESORA CANON L455 SERIES', '2023-01-03 08:30:00', '2023-01-03 11:10:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0002', '2', 'INSTALACION DE OFFICE 2021 EN UNA PC', '2023-01-03 09:10:00', '2023-01-03 12:55:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0003', '5', 'MANTENIMIENTO DE UNA IMPRESORA KONICA MINOLTA BIZHUB 363', '2023-01-04 09:00:00', '2023-01-04 12:00:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0004', '3', 'CONFIGURACION DE UN ESCANER KYOCERA', '2023-01-04 09:20:00', '2023-01-04 10:10:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0005', '2', 'INSTALACION DE WINDOWS 10 EN DOS PCS', '2023-01-04 10:40:00', '2023-01-04 13:00:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0006', '7', 'INSTALACION DE CABLEO DE RED', '2023-01-05 08:15:00', '2023-01-05 13:00:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0007', '4', 'CONFIGURACION DE IP DINAMICA A FIJA DE UNA PC', '2023-01-05 09:00:00', '2023-01-05 12:00:00');
INSERT INTO orden(id_orden, id_dependencia, descripcion, fechahora_inicio, fechahora_fin)
VALUES('T0008', '1', 'CONFIGURACION DE UN ACCESS POINT', '2023-01-05 08:50:00', '2023-01-05 12:30:00');

-- Insertar datos en la tabla usuario orden
USE rcu_attendance;
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345671', 'O0001');
INSERT INTO usuario_orden(id_usuario, id_orden) 
VALUES('12345673', 'O0001');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345675', 'O0001');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345672', 'O0002');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345674', 'O0002');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345676', 'O0003');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345672', 'O0004');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345674', 'O0004');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345672', 'O0005');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345674', 'O0005');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345675', 'O0006');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345671', 'O0006');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345676', 'O0007');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345672', 'O0008');
INSERT INTO usuario_orden(id_usuario, id_orden)
VALUES('12345674', 'O0008'); 

USE rcu_attendance;
SELECT * FROM usuario;
SELECT * FROM asistencia;
SELECT * FROM dependencia;
SELECT * FROM orden;
SELECT * FROM usuario_orden;