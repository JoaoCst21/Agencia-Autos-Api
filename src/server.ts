import * as express from "express";
import { routeFactory } from "./routeFactory";
import productController from "./controller/product.controller";
import categoryController from "./controller/category.controller";
import cashRegisterController from "./controller/cashRegister.controller";
import clientController from "./controller/client.controller";
import providerController from "./controller/provider.controller";
import employeeController from "./controller/employee.controller";
import providerInvoiceController from "./controller/providerInvoice.controller";
import saleInvoiceController from "./controller/saleInvoice.controller";
import purchasedProductController from "./controller/purchasedProduct.controller";
import soldProductController from "./controller/soldProduct.controller";
import unitController from "./controller/unit.controller";

const app = express();
const PORT = 3000 || process.env.PORT;

app.get("/", (req, res) => {
  res.send("Hello World!");
});

const router = express.Router();
app.use("/api", router);

router.get("/", (req, res) => {
  res.send("test!");
});

router.use("/products", routeFactory(productController));
router.use("/category", routeFactory(categoryController));
router.use("/cashRegister", routeFactory(cashRegisterController));
router.use("/client", routeFactory(clientController));
router.use("/provider", routeFactory(providerController));
router.use("/employee", routeFactory(employeeController));
router.use("/providerInvoice", routeFactory(providerInvoiceController));
router.use("/saleInvoice", routeFactory(saleInvoiceController));
router.use("/purchasedProduct", routeFactory(purchasedProductController));
router.use("/soldProduct", routeFactory(soldProductController));
router.use("/unit", routeFactory(unitController));

app.listen(PORT, () => {
  console.log("Server started on port 3000");
});
