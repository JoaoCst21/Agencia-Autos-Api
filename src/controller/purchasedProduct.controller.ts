import { PurchasedProduct } from "../model/entities";
import Dao from "../dao/Dao";

class PurchasedProductController extends Dao<PurchasedProduct> {
  constructor() {
    super(
      "createPurchasedProduct(?, ?, ?)",
      "updatePurchasedProduct(?, ?, ?, ?)",
      "delePurchasedProduct(?)",
      "getPurchasedProduct(?)",
      "getAllPurchasedProducts()"
    );
  }

  procedureParams(resource: PurchasedProduct): any[] {
    return [resource._idProduct, resource._idSaleInvoice, resource.quantity];
  }
}

export default new PurchasedProductController();
