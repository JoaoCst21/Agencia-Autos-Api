USE walmart;

# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getProducts`;
CREATE PROCEDURE `getProducts`(IN `product_id` INT)
BEGIN
    SELECT * FROM `productos` WHERE `idproducto` = product_id;
END$$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllProducts`;
CREATE PROCEDURE `getAllProducts`()
BEGIN
    SELECT * FROM `productos`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createProduct`;
CREATE PROCEDURE `createProduct`(IN `product_name` VARCHAR(50), IN `product_price` DECIMAL(10, 2), IN `_CategoryId` INT)
BEGIN
    INSERT INTO `productos` (`nombreproducto`, `precioproducto`, `_idcategoria`)
    VALUES (product_name, product_price, _categoryid);
END $$
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateProduct`;
CREATE PROCEDURE `updateProduct`(IN `product_id` INT, IN `product_name` VARCHAR(50), IN `product_price` DECIMAL(10, 2),
                                 IN `_CategoryId` INT)
BEGIN
    UPDATE `productos`
    SET `nombreproducto` = product_name,
        `precioproducto` = product_price,
        `_idcategoria`   = _categoryid
    WHERE `idproducto` = product_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteProduct`;
CREATE PROCEDURE `deleteProduct`(IN `product_id` INT)
BEGIN
    DELETE FROM `productos` WHERE `idproducto` = product_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getCategory`;
CREATE PROCEDURE `getCategory`(IN `category_id` INT)
BEGIN
    SELECT * FROM `categorias` WHERE `idcategoria` = category_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllCategories`;
CREATE PROCEDURE `getAllCategories`()
BEGIN
    SELECT * FROM `categorias`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createCategory`;
CREATE PROCEDURE `createCategory`(IN `category_name` VARCHAR(50))
BEGIN
    INSERT INTO `categorias` (`nombrecategoria`)
    VALUES (category_name);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateCategory`;
CREATE PROCEDURE `updateCategory`(IN `category_id` INT, IN `category_name` VARCHAR(50))
BEGIN
    UPDATE `categorias`
    SET `nombrecategoria` = category_name
    WHERE `idcategoria` = category_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteCategory`;
CREATE PROCEDURE `deleteCategory`(IN `category_id` INT)
BEGIN
    DELETE FROM `categorias` WHERE `idcategoria` = category_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getClient`;
CREATE PROCEDURE `getClient`(IN `client_id` INT)
BEGIN
    SELECT * FROM `clientes` WHERE `NIT` = client_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllClients`;
CREATE PROCEDURE `getAllClients`()
BEGIN
    SELECT * FROM `clientes`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createClient`;
CREATE PROCEDURE `createClient`(IN `client_name` VARCHAR(50), IN `client_lastName` VARCHAR(50),
                                IN `client_address` VARCHAR(50))
BEGIN
    INSERT INTO `clientes` (`nombres`, `apellidos`, `direccion`)
    VALUES (client_name, client_lastname, client_address);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateClient`;
CREATE PROCEDURE `updateClient`(IN `client_id` INT, IN `client_name` VARCHAR(50), IN `client_lastName` VARCHAR(50),
                                IN `client_address` VARCHAR(50))
BEGIN
    UPDATE `clientes`
    SET `nombres`   = client_name,
        `apellidos` = client_lastname,
        `direccion` = client_address
    WHERE `NIT` = client_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteClient`;
CREATE PROCEDURE `deleteClient`(IN `client_id` INT)
BEGIN
    DELETE FROM `clientes` WHERE `NIT` = client_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getProvider`;
CREATE PROCEDURE `getProvider`(IN `provider_id` INT)
BEGIN
    SELECT * FROM `proveedores` WHERE `idproveedor` = provider_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllProviders`;
CREATE PROCEDURE `getAllProviders`()
BEGIN
    SELECT * FROM `proveedores`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createProvider`;
CREATE PROCEDURE `createProvider`(IN `provider_name` VARCHAR(50), IN `provider_address` VARCHAR(50),
                                  IN `provider_phone` BIGINT(50))
BEGIN
    INSERT INTO `proveedores` (`nombreproveedor`, `direccionproveedor`, `telefonoproveedor`)
    VALUES (provider_name, provider_address, provider_phone);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateProvider`;
CREATE PROCEDURE `updateProvider`(IN `provider_id` INT, IN `provider_name` VARCHAR(50),
                                  IN `provider_address` VARCHAR(50),
                                  IN `provider_phone` BIGINT(50))
BEGIN
    UPDATE `proveedores`
    SET `nombreproveedor`    = provider_name,
        `direccionproveedor` = provider_address,
        `telefonoproveedor`  = provider_phone
    WHERE `idproveedor` = provider_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteProvider`;
CREATE PROCEDURE `deleteProvider`(IN `provider_id` INT)
BEGIN
    DELETE FROM `proveedores` WHERE `idproveedor` = provider_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getSoldProducts`;
CREATE PROCEDURE `getSoldProducts`(IN `soldProduct_id` INT)
BEGIN
    SELECT * FROM `productosvendidos` WHERE `idtransaccion` = soldproduct_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllSoldProducts`;
CREATE PROCEDURE `getAllSoldProducts`()
BEGIN
    SELECT * FROM `productosvendidos`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createSoldProduct`;
CREATE PROCEDURE `createSoldProduct`(IN `_productId` INT, IN `_invoiceId` INT, IN `quantity` INT)
BEGIN
    INSERT INTO `productosvendidos` (`_idproducto`, `_idfacturaventa`, `cantidad`)
    VALUES (_productid, _invoiceid, quantity);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateSoldProduct`;
CREATE PROCEDURE `updateSoldProduct`(IN `soldProduct_id` INT, IN `_productId` INT, IN `_invoiceId` INT,
                                     IN `quantity` INT)
BEGIN
    UPDATE `productosvendidos`
    SET `_idproducto`     = _productid,
        `_idfacturaventa` = _invoiceid,
        `cantidad`        = quantity
    WHERE `idtransaccion` = soldproduct_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteSoldProduct`;
CREATE PROCEDURE `deleteSoldProduct`(IN `soldProduct_id` INT)
BEGIN
    DELETE FROM `productosvendidos` WHERE `idtransaccion` = soldproduct_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getPurchasedProduct`;
CREATE PROCEDURE `getPurchasedProduct`(IN `boughtProduct_id` INT)
BEGIN
    SELECT * FROM `productoscomprados` WHERE `idtransaccion` = boughtproduct_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllPurchasedProducts`;
CREATE PROCEDURE `getAllPurchasedProducts`()
BEGIN
    SELECT * FROM `productoscomprados`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createPurchasedProduct`;
CREATE PROCEDURE `createPurchasedProduct`(IN `_productId` INT, IN `_invoiceId` INT, IN `quantity` INT)
BEGIN
    INSERT INTO `productoscomprados` (`_idproducto`, `_idfacturacompra`, `cantidad`)
    VALUES (_productid, _invoiceid, quantity);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updatePurchasedProduct`;
CREATE PROCEDURE `updatePurchasedProduct`(IN `boughtProduct_id` INT, IN `_productId` INT, IN `_invoiceId` INT,
                                          IN `quantity` INT)
BEGIN
    UPDATE `productoscomprados`
    SET `_idproducto`      = _productid,
        `_idfacturacompra` = _invoiceid,
        `cantidad`         = quantity
    WHERE `idtransaccion` = boughtproduct_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deletePurchasedProduct`;
CREATE PROCEDURE `deletePurchasedProduct`(IN `boughtProduct_id` INT)
BEGIN
    DELETE FROM `productoscomprados` WHERE `idtransaccion` = boughtproduct_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getProviderInvoice`;
CREATE PROCEDURE `getProviderInvoice`(IN `invoice_id` INT)
BEGIN
    SELECT * FROM `facturaproveedores` WHERE `idfactura` = invoice_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllProviderInvoices`;
CREATE PROCEDURE `getAllProviderInvoices`()
BEGIN
    SELECT * FROM `facturaproveedores`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createProviderInvoice`;
CREATE PROCEDURE `createProviderInvoice`(IN `_providerId` INT, IN `invoiceDate` DATETIME,
                                         IN `invoiceDateExpiration` DATETIME,
                                         IN `invoiceTotal` DECIMAL(10, 2))
BEGIN
    INSERT INTO `facturaproveedores` (`_idproveedor`, `fechaemision`, fechavencimiento, `total`)
    VALUES (_providerid, invoicedate, invoicedateexpiration, invoicetotal);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateProviderInvoice`;
CREATE PROCEDURE `updateProviderInvoice`(IN `invoice_id` INT, IN `_providerId` INT, IN `invoiceDate` DATETIME,
                                         IN `invoiceDateExpiration` DATETIME,
                                         IN `invoiceTotal` DECIMAL(10, 2))
BEGIN
    UPDATE `facturaproveedores`
    SET `_idproveedor`     = _providerid,
        `fechaemision`     = invoicedate,
        `fechavencimiento` = invoicedateexpiration,
        `total`            = invoicetotal
    WHERE `idfactura` = invoice_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteProviderInvoice`;
CREATE PROCEDURE `deleteProviderInvoice`(IN `invoice_id` INT)
BEGIN
    DELETE FROM `facturaproveedores` WHERE `idfactura` = invoice_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getInvoiceClient`;
DROP PROCEDURE IF EXISTS `getSaleInvoice`;
CREATE PROCEDURE `getSaleInvoice`(IN `invoice_id` INT)
BEGIN
    SELECT * FROM `facturasventa` WHERE `idfacturaventa` = invoice_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllInvoiceClient`;
DROP PROCEDURE IF EXISTS `getAllSaleInvoices`;
CREATE PROCEDURE `getAllSaleInvoices`()
BEGIN
    SELECT * FROM `facturasventa`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createInvoiceClient`;
DROP PROCEDURE IF EXISTS `createSaleInvoice`;
CREATE PROCEDURE `createSaleInvoice`(IN `_clientId` VARCHAR(50), IN `_employeeId` INT, IN `_cashRegisterId` INT,
                                     IN `invoiceDate` DATETIME, IN invoicedateexpiration DATETIME,
                                     IN `invoiceTotal` DECIMAL(10, 2))
BEGIN
    INSERT INTO `facturasventa` (`NIT`, `_idempleado`, `fechaemision`, fechavencimiento, `_idcaja`, `total`)
    VALUES (_clientid, _employeeid, invoicedate, invoicedateexpiration, _cashregisterid, invoicetotal);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateInvoiceClient`;
DROP PROCEDURE IF EXISTS `updateSaleInvoice`;
CREATE PROCEDURE `updateSaleInvoice`(IN `invoice_id` INT, IN `_clientId` VARCHAR(50), IN `_employeeId` INT,
                                     IN `_cashRegisterId` INT, IN `invoiceDate` DATETIME,
                                     IN invoicedateexpiration DATETIME,
                                     IN `invoiceTotal` DECIMAL(10, 2))
BEGIN
    UPDATE `facturasventa`
    SET `NIT`              = _clientid,
        `_idempleado`      = _employeeid,
        `fechaemision`     = invoicedate,
        `fechavencimiento` = invoicedateexpiration,
        `_idcaja`          = _cashregisterid,
        `total`            = invoicetotal
    WHERE `idfacturaventa` = invoice_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteInvoiceClient`;
DROP PROCEDURE IF EXISTS `deleteSaleInvoice`;
CREATE PROCEDURE `deleteSaleInvoice`(IN `invoice_id` INT)
BEGIN
    DELETE FROM `facturasventa` WHERE `idfacturaventa` = invoice_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getCashRegister`;
CREATE PROCEDURE `getCashRegister`(IN `cashRegister_id` INT)
BEGIN
    SELECT * FROM `cajas` WHERE `idcaja` = cashregister_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllCashRegister`;
CREATE PROCEDURE `getAllCashRegister`()
BEGIN
    SELECT * FROM `cajas`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createCashRegister`;
CREATE PROCEDURE `createCashRegister`(IN `cashRegisterType` VARCHAR(50))
BEGIN
    INSERT INTO `cajas` (`tipocaja`)
    VALUES (cashregistertype);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateCashRegister`;
CREATE PROCEDURE `updateCashRegister`(IN `cashRegister_id` INT, IN `cashRegisterType` VARCHAR(50))
BEGIN
    UPDATE `cajas`
    SET `tipocaja` = cashregistertype
    WHERE `idcaja` = cashregister_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteCashRegister`;
CREATE PROCEDURE `deleteCashRegister`(IN `cashRegister_id` INT)
BEGIN
    DELETE FROM `cajas` WHERE `idcaja` = cashregister_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getEmployee`;
CREATE PROCEDURE `getEmployee`(IN `employee_id` INT)
BEGIN
    SELECT * FROM `empleados` WHERE `idempleado` = employee_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `getAllEmployees`;
CREATE PROCEDURE `getAllEmployees`()
BEGIN
    SELECT * FROM `empleados`;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `createEmployee`;
CREATE PROCEDURE `createEmployee`(IN `_employeeName` VARCHAR(50), IN `_employeeLastName` VARCHAR(50),
                                  IN `_employeeIncome` DECIMAL(10, 2), IN `_employeePhone` BIGINT,
                                  IN `_cashregisterid` INT)
BEGIN
    INSERT INTO `empleados` (`nombreempleado`, `apellidoempleado`, salarioempleado, `telefonoempleado`, `_idcaja`)
    VALUES (_employeename, _employeelastname, _employeeincome, _employeephone, _cashregisterid);
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `updateEmployee`;
CREATE PROCEDURE `updateEmployee`(IN `employee_id` INT, IN `_employeeName` VARCHAR(50),
                                  IN `_employeeLastName` VARCHAR(50), IN `_employeeIncome` DECIMAL(10, 2),
                                  IN `_employeePhone` INT, IN `_cashregisterid` INT)
BEGIN
    UPDATE `empleados`
    SET `nombreempleado`   = _employeename,
        `apellidoempleado` = _employeelastname,
        `salarioempleado`  = _employeeincome,
        `telefonoempleado` = _employeephone,
        `_idcaja`          = _cashregisterid
    WHERE `idempleado` = employee_id;
END $$
DELIMITER ;
# --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS `deleteEmployee`;
CREATE PROCEDURE `deleteEmployee`(IN `employee_id` INT)
BEGIN
    DELETE FROM `empleados` WHERE `idempleado` = employee_id;
END $$
DELIMITER ;
# --------------------------------------------------------
# --------------------------------------------------------