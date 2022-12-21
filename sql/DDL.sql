DROP
    DATABASE IF EXISTS walmart;
CREATE
    DATABASE IF NOT EXISTS walmart;
USE
    walmart;

CREATE TABLE `Empleados`
(
    `idEmpleado`       INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `salarioEmpleado`  INT,
    `nombreEmpleado`   VARCHAR(50),
    `apellidoEmpleado` VARCHAR(50),
    `telefonoEmpleado` INT,
    `_idCaja`          INT             NOT NULL
);

CREATE TABLE `Cajas`
(
    `idCaja`   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `tipoCaja` VARCHAR(50)     NOT NULL
);

CREATE TABLE `Productos`
(
    `idProducto`     INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `nombreProducto` VARCHAR(50),
    `precioProducto` DECIMAL(10, 2),
    `_idCategoria`   INT             NOT NULL
);

CREATE TABLE `Categorias`
(
    `idCategoria`     INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `nombreCategoria` VARCHAR(50)
);

CREATE TABLE `FacturasVenta`
(
    `idFacturaVenta`   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `NIT`              VARCHAR(50)     NOT NULL,
    `_idEmpleado`      INT             NOT NULL,
    `_idCaja`          INT             NOT NULL,
    `fechaEmision`     DATETIME        NOT NULL,
    `fechaVencimiento` DATETIME        NOT NULL,
    `total`            DECIMAL(10, 2)
);

CREATE TABLE `ProductosVendidos`
(
    `idTransaccion`   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `_idProducto`     INT,
    `_idFacturaVenta` INT,
    `cantidad`        INT             NOT NULL
);

CREATE TABLE `Proveedores`
(
    `idProveedor`        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `nombreProveedor`    VARCHAR(50),
    `direccionProveedor` VARCHAR(50),
    `telefonoProveedor`  BIGINT
);

CREATE TABLE `FacturaProveedores`
(
    `idFactura`        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `_idProveedor`     INT             NOT NULL,
    `fechaEmision`     DATETIME        NOT NULL,
    `fechaVencimiento` DATETIME        NOT NULL,
    `total`            DECIMAL(10, 2)  NOT NULL
);

CREATE TABLE `ProductosComprados`
(
    `idTransaccion`    INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `_idProducto`      INT             NOT NULL,
    `_idFacturaCompra` INT             NOT NULL,
    `cantidad`         INT             NOT NULL
);

CREATE TABLE `Clientes`
(
    `NIT`       VARCHAR(50) PRIMARY KEY NOT NULL,
    `nombres`   VARCHAR(50)             NOT NULL,
    `apellidos` VARCHAR(50)             NOT NULL,
    `direccion` VARCHAR(50)             NOT NULL
);

ALTER TABLE `Empleados`
    ADD FOREIGN KEY (`_idCaja`) REFERENCES `Cajas` (`idCaja`);

ALTER TABLE `Productos`
    ADD FOREIGN KEY (`_idCategoria`) REFERENCES `Categorias` (`idCategoria`);

ALTER TABLE `FacturasVenta`
    ADD FOREIGN KEY (`_idEmpleado`) REFERENCES `Empleados` (`idEmpleado`);

ALTER TABLE `FacturasVenta`
    ADD FOREIGN KEY (`_idCaja`) REFERENCES `Cajas` (`idCaja`);

ALTER TABLE `ProductosVendidos`
    ADD FOREIGN KEY (`_idProducto`) REFERENCES `Productos` (`idProducto`);

ALTER TABLE `ProductosVendidos`
    ADD FOREIGN KEY (`_idFacturaVenta`) REFERENCES `FacturasVenta` (`idFacturaVenta`);

ALTER TABLE `FacturasVenta`
    ADD FOREIGN KEY (`NIT`) REFERENCES `Clientes` (`NIT`);

ALTER TABLE `ProductosComprados`
    ADD FOREIGN KEY (`_idProducto`) REFERENCES `Productos` (`idProducto`);

ALTER TABLE `ProductosComprados`
    ADD FOREIGN KEY (`_idFacturaCompra`) REFERENCES `FacturaProveedores` (`idFactura`);

ALTER TABLE `FacturaProveedores`
    ADD FOREIGN KEY (`_idProveedor`) REFERENCES `Proveedores` (`idProveedor`);
