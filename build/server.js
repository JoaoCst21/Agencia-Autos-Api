"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express = require("express");
var routeFactory_1 = require("./routeFactory");
var product_controller_1 = require("./controller/product.controller");
var category_controller_1 = require("./controller/category.controller");
var cashRegister_controller_1 = require("./controller/cashRegister.controller");
var client_controller_1 = require("./controller/client.controller");
var provider_controller_1 = require("./controller/provider.controller");
var employee_controller_1 = require("./controller/employee.controller");
var providerInvoice_controller_1 = require("./controller/providerInvoice.controller");
var saleInvoice_controller_1 = require("./controller/saleInvoice.controller");
var purchasedProduct_controller_1 = require("./controller/purchasedProduct.controller");
var soldProduct_controller_1 = require("./controller/soldProduct.controller");
var unit_controller_1 = require("./controller/unit.controller");
var app = express();
var PORT = 3000 || process.env.PORT;
app.get("/", function (req, res) {
    res.send("Hello World!");
});
var router = express.Router();
app.use("/api", router);
router.get("/", function (req, res) {
    res.send("test!");
});
router.use("/products", (0, routeFactory_1.routeFactory)(product_controller_1.default));
router.use("/category", (0, routeFactory_1.routeFactory)(category_controller_1.default));
router.use("/cashRegister", (0, routeFactory_1.routeFactory)(cashRegister_controller_1.default));
router.use("/client", (0, routeFactory_1.routeFactory)(client_controller_1.default));
router.use("/provider", (0, routeFactory_1.routeFactory)(provider_controller_1.default));
router.use("/employee", (0, routeFactory_1.routeFactory)(employee_controller_1.default));
router.use("/providerInvoice", (0, routeFactory_1.routeFactory)(providerInvoice_controller_1.default));
router.use("/saleInvoice", (0, routeFactory_1.routeFactory)(saleInvoice_controller_1.default));
router.use("/purchasedProduct", (0, routeFactory_1.routeFactory)(purchasedProduct_controller_1.default));
router.use("/soldProduct", (0, routeFactory_1.routeFactory)(soldProduct_controller_1.default));
router.use("/unit", (0, routeFactory_1.routeFactory)(unit_controller_1.default));
app.listen(PORT, function () {
    console.log("Server started on port 3000");
});
//# sourceMappingURL=server.js.map