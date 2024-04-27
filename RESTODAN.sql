CREATE DATABASE resto_dan;

USE resto_dan;

CREATE TABLE MENU (
    ID_MENU INT(3) AUTO_INCREMENT NOT NULL,
    ID_BEBIDA INT(3) NOT NULL,
    CANTIDAD INT(3) NOT NULL, 
    DESCRIPCION VARCHAR(150) NOT NULL,
    PRIMARY KEY (ID_MENU)
);

CREATE TABLE PLATO (
    ID_PLATO INT(3) AUTO_INCREMENT NOT NULL,
    PLATO VARCHAR(100) NOT NULL,
    PRECIO INT(5) NOT NULL, 
    DESCRIPCION VARCHAR(150) NOT NULL,
    PRIMARY KEY (ID_PLATO)
);

CREATE TABLE BEBIDA (
    ID_BEBIDA INT(3) AUTO_INCREMENT NOT NULL,
    NOMBEBIDA VARCHAR(50) NOT NULL,
    PRECIO INT(5) NOT NULL,
    DESCRIPCION VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_BEBIDA)
);

CREATE TABLE USUARIO (
	ID_USUARIO INT(4) AUTO_INCREMENT NOT NULL,
    NOMAPE VARCHAR(70) NOT NULL,
    DNI INT(8) NOT NULL,
    CELULAR INT(11) NOT NULL,
    DIRECCION VARCHAR(30) NOT NULL, 
    PRIMARY KEY (ID_USUARIO)
);

CREATE TABLE LOGIN (
    ID_LOGIN varchar(10) NOT NULL,
    IDUSUARIO INT(4) AUTO_INCREMENT NOT NULL,
    NOMAPE VARCHAR(70) NOT NULL,
    PASSWORD VARCHAR(15) NOT NULL,
    DNI INT(8) NOT NULL,
    CELULAR INT(11) NOT NULL,
    DIRECCION VARCHAR(30) NOT NULL, 
    PRIMARY KEY (ID_LOGIN)
);

CREATE TABLE CLIENTE (
    ID_CLIENTE INT(4) AUTO_INCREMENT NOT NULL,
    NOMAPE VARCHAR(70) NOT NULL,
    CELULAR INT(11) NOT NULL,
    DIRECCION VARCHAR(30) NOT NULL,
    DNICUIT INT(11) NOT NULL,
    PRIMARY KEY (ID_CLIENTE)
);

CREATE TABLE MESA (
    ID_MESA INT(3) AUTO_INCREMENT NOT NULL,
    ID_RESERVA INT(3) NOT NULL,
    MESA INT(3) NOT NULL,
    PRIMARY KEY (ID_MESA)
);


CREATE TABLE RESERVA (
    ID_RESERVA INT(3) AUTO_INCREMENT NOT NULL,
    DESCRIPCION VARCHAR(255) NOT NULL,
    ID_USUARIO INT(4) NOT NULL,
    ID_CLIENTE INT(4) NOT NULL,
    ID_MESA INT(3) NOT NULL,
    ID_PLATO INT(3) NOT NULL,
    ID_BEBIDA INT(3) NOT NULL,
    FECHA_RESERVA date NOT NULL,  
    PRIMARY KEY(ID_RESERVA),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO),
    FOREIGN KEY (ID_MESA) REFERENCES MESA(ID_MESA),
    FOREIGN KEY (ID_PLATO) REFERENCES PLATO(ID_PLATO),
    FOREIGN KEY (ID_BEBIDA) REFERENCES BEBIDA(ID_BEBIDA)
);

CREATE TABLE FACTURA (
    ID_FACTURA INT AUTO_INCREMENT NOT NULL,
    FACTURA VARCHAR(255),
    FECHA DATE NOT NULL,
    PRIMARY KEY(ID_FACTURA)
); 


CREATE TABLE FACTURACION (
    ID_MESA INT(3) AUTO_INCREMENT NOT NULL,
    NUM_FACTURA VARCHAR(255) NOT NULL,
    CANTIDAD INT NOT NULL,
    DESCRIPCION VARCHAR(150) NOT NULL,
    PRECIO INT NOT NULL,
    COSTO INT NOT NULL,
    ID_CLIENTE INT NOT NULL,
    ID_USUARIO INT NOT NULL,
    ID_RESERVA INT NOT  NULL,
    ID_FACTURA INT NOT NULL,
    PRIMARY KEY(ID_VENTA),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO(ID_USUARIO),
    FOREIGN KEY (ID_RESERVA) REFERENCES RESERVA(ID_RESERVA),
    FOREIGN KEY (ID_MESA) REFERENCES MESA(ID_MESA),
    FOREIGN KEY (ID_FACTURA) REFERENCES FACTURA(ID_FACTURA)