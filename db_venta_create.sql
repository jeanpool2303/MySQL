-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-10-08 01:18:37.5

-- tables
-- Table: Cliente
CREATE TABLE Cliente (
    ID_C int NOT NULL,
    Nom_C varchar(70) NULL,
    Ape_C varchar(100) NULL,
    DNI_C char(8) NULL,
    Dir_C varchar(200) NOT NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY (ID_C)
);

-- Table: Productos
CREATE TABLE Productos (
    id_P int NOT NULL,
    Des_p varchar(150) NULL,
    PrecUn_p decimal(6,2) NULL,
    CONSTRAINT Productos_pk PRIMARY KEY (id_P)
);

-- Table: Venta
CREATE TABLE Venta (
    cod_v char(4) NOT NULL,
    Fe_V date NULL,
    ID_C int NOT NULL,
    CONSTRAINT Venta_pk PRIMARY KEY (cod_v)
);

-- Table: Venta_dt
CREATE TABLE Venta_dt (
    id_Vdt int NOT NULL,
    id_P int NOT NULL,
    cod_v char(4) NOT NULL,
    CONSTRAINT Venta_dt_pk PRIMARY KEY (id_Vdt)
);

-- foreign keys
-- Reference: Venta_Cliente (table: Venta)
ALTER TABLE Venta ADD CONSTRAINT Venta_Cliente FOREIGN KEY Venta_Cliente (ID_C)
    REFERENCES Cliente (ID_C);

-- Reference: Venta_dt_Productos (table: Venta_dt)
ALTER TABLE Venta_dt ADD CONSTRAINT Venta_dt_Productos FOREIGN KEY Venta_dt_Productos (id_P)
    REFERENCES Productos (id_P);

-- Reference: Venta_dt_Venta (table: Venta_dt)
ALTER TABLE Venta_dt ADD CONSTRAINT Venta_dt_Venta FOREIGN KEY Venta_dt_Venta (cod_v)
    REFERENCES Venta (cod_v);

-- End of file.

