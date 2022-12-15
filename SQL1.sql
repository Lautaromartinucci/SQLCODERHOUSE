CREATE DATABASE brubank_martinucci;

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