	DROP DATABASE IF EXISTS baloncesto;
CREATE DATABASE baloncesto;
USE baloncesto;

CREATE TABLE `Jugadores` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL DEFAULT '',
    `votos` INT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `UNIQUE_KEY` (`id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE = UTF8_GENERAL_CI;


INSERT INTO Jugadores (id, nombre, votos) VALUES (1, 'Llull', 0);
INSERT INTO Jugadores (id, nombre, votos) VALUES (2, 'Rudy', 0);
INSERT INTO Jugadores (id, nombre, votos) VALUES (3, 'Tavares', 1);


CREATE USER IF NOT EXISTS 'usuario'@'localhost' IDENTIFIED BY 'clave';
GRANT ALL PRIVILEGES ON baloncesto.Jugadores TO 'usuario'@'localhost';
FLUSH PRIVILEGES;
