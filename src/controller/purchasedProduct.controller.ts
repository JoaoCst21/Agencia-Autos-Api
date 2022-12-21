import { PurchasedProduct } from "../model/entities";
import Dao from "../dao/Dao";

class PurchasedProductController extends Dao<PurchasedProduct> {
  constructor() {
    super(
      "createProviderInvoice(?, ?, ?)",
      "updateProviderInvoice(?, ?, ?, ?)",
      "deleteProviderInvoice(?)",
      "getProviderInvoice(?)",
      "getAllProviderInvoices()"
    );
  }

  procedureParams(resource: PurchasedProduct): any[] {
    return [resource._idProduct, resource._idSaleInvoice, resource._idUnit];
  }
}

export default new PurchasedProductController();
