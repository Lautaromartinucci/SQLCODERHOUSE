CREATE DATABASE brubank_martinucci;

USE brubank_martinucci;

-- CREACIÓN DE TABLAS 

CREATE TABLE clientes (
	id_client INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	name_client VARCHAR(30) NOT NULL,
	lastname_client VARCHAR(30) NOT NULL,
	dni VARCHAR(15) NOT NULL,
	birthday DATE NOT NULL,
	id_card INT NOT NULL
);
CREATE TABLE cuenta (
	acc_type VARCHAR(20) PRIMARY KEY NOT NULL,
    id_client INT NOT NULL,
	name_client VARCHAR(30) NOT NULL,
	lastname_client VARCHAR(30) NOT NULL,
    foreign key (id_client) references clientes(id_client)
);

CREATE TABLE tarjeta (
	id_card INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    acc_type VARCHAR(20) NOT NULL,
    branch VARCHAR(30) NOT NULL, 
    id_client INT NOT NULL,
    foreign key (acc_type) references cuenta(acc_type),
    foreign key (id_client) references clientes(id_client)
);

CREATE TABLE transacciones (
	id_trans INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    date_time DATETIME NOT NULL,
    amount DECIMAL NOT NULL, 
    id_client INT NOT NULL,
    foreign key (id_client) references clientes(id_client)
);

CREATE TABLE prestamos (
	id_loan INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    quote_n INT NOT NULL,
    amount DECIMAL,
    expiration_date DATE NOT NULL,
    id_client INT NOT NULL,
    foreign key (id_client) references clientes(id_client)
);


-- CREACIÓN DE VISTAS 

CREATE OR REPLACE VIEW miembros AS
	(SELECT name_client, lastname_client
    FROM clientes
    );
    
CREATE OR REPLACE VIEW miembrosmayores AS
	(SELECT acc_type, id_client
    FROM tarjeta
    WHERE acc_type not like ('%teen%')
    );
    
CREATE OR REPLACE VIEW alertatransacciones AS
	(SELECT id_trans, amount, id_client
	FROM transacciones
    WHERE amount > 1000);
    
CREATE OR REPLACE VIEW clientesbsas AS    
	(SELECT
		C.name_client,
		C.lastname_client,
		C.dni
	FROM clientes as C
	INNER JOIN tarjeta as T ON C.id_client = T.id_client
	WHERE branch like ('%Buenos Aires%'));

 CREATE OR REPLACE VIEW historialtransftotal AS
	(SELECT c.id_client as clientes,
		c.name_client as nombre, 
        c.lastname_client as apellido,
        t.id_trans as trans, t.amount as monto
	FROM clientes as c 
    INNER JOIN transacciones as t 
    ON (c.id_client = t.id_client));
 
 
-- CREACIÓN DE FUNCTION 

 DELIMITER $$
CREATE FUNCTION fullname (id_client_param INT) 
RETURNS VARCHAR (100)
DETERMINISTIC
    BEGIN 
        DECLARE fullname VARCHAR (100);
        SELECT name_hues, lastname_client
        INTO fullname
        FROM huesped 
        WHERE id_hues = id_hues_param;
        RETURN fullname;
    END$$
DELIMITER;

SELECT fullname (1);

DELIMITER $$
CREATE FUNCTION dniclient (id_client_param INT) 
RETURNS int
DETERMINISTIC
BEGIN 
        DECLARE c_dni int;
        SELECT dni
        INTO c_dni
        FROM clientes
        WHERE id_client = id_client_param;
        RETURN c_dni;
    END$$
DELIMITER ;

SELECT dniclient(5);


-- CREACIÓN DE PROCEDURE 

DELIMITER $$
CREATE PROCEDURE clientes_sp()
BEGIN
    SELECT * FROM clientes;

END$$
DELIMITER ;



-- Eliminar registros TCL  
START TRANSACTION; 
	DELETE FROM brubank_martinucci.transacciones where id_trans = 1;
    DELETE FROM brubank_martinucci.transacciones where id_trans = 2;
    DELETE FROM brubank_martinucci.transacciones where id_trans = 3;
    
-- ROLLBACK ; 

COMMIT;

SELECT * FROM brubank_martinucci.transacciones;

-- Agregar registros tcl con savepoin 

START TRANSACTION;
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 10, 'Del Moro', 'Maro');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 11, 'Tabuo', 'Slatam');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 12, 'Longa', 'Maru');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 13, 'Jonhy', 'Estupinan');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 14, 'Andrea', 'Del Boca');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 15, 'Hector', 'Valoo');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 16, 'Teston', 'Maruo');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Teen', 17, 'Lauro', 'Maro');
SAVEPOINT INSERCIONSAVE1;

INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Gold', 18, 'Emir', 'Montalban');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Gold', 19, 'Sancho', 'Montalban');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Gold', 20, 'Pluto', 'Gabilan');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Gold', 21, 'Emma', 'Montalban');
INSERT INTO brubank_martinucci.cuenta (acc_type, id_client, name_client, lastname_client) VALUES
( 'Gold', 22, 'Tuckson', 'Manton');
SAVEPOINT INSERCIONSAVE2;

-- ROLLBACK TO INSERCIONSAVE1; 
-- SELECT * FROM brubank_martinucci.cuenta;