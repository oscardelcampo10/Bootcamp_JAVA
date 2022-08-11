/************************************************
 *      BASE DE DATOS medicacamp                *
 *                                              *
 *      Archivo de Definicion de Datos (DDL)    *
 ***********************************************/
 
 /*
    Version:        1.0
    Fecha:          27/07/2022 11:00:00

    Comentarios:    Esta es la primera version de la base de datos
                    con las instrucciones necesarias para
                    generar las tablas.
 */

DROP DATABASE IF EXISTS medicacamp;

CREATE DATABASE medicacamp;

USE medicacamp;

--  Esta tabla guarda los datos de los registros
CREATE TABLE preregistro
(
	idPreregistro       INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre              VARCHAR(100) NOT NULL,-- 1
    apellidoPaterno     VARCHAR(100) NOT NULL,-- 2
    apellidoMaterno     VARCHAR(100) NOT NULL,-- 3
	fechaNacimiento		VARCHAR(40)  NOT NULL,-- 4
	email				VARCHAR(200) NOT NULL,-- 5
	telefono 			VARCHAR(20) NOT NULL , -- 6
	sexo				VARCHAR(15) NOT NULL , -- 7
	tipoSangre			VARCHAR(50) NOT NULL , -- 8
    cantidad			DOUBLE NOT NULL,
    ine					LONGTEXT,	           -- 9
	codigo              VARCHAR(12) NOT NULL

);

-- INSERT INTO preregistro(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, email, telefono, sexo, tipoSangre, ine)
	-- VALUES('Sergio', 'Alba', '', '', '', '', '', '', '');