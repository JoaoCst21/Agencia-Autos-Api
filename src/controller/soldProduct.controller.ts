import { SoldProduct } from "../model/entities";
import Dao from "../dao/Dao";

class SoldProductController extends Dao<SoldProduct> {
  constructor() {
    super(
      "createSoldProduct(?, ?, ?)",
      "updateSoldProduct(?, ?, ?, ?)",
      "deleteSoldProduct(?)",
      "getSoldProduct(?)",
      "getAllSoldProducts()"
    );
  }

  procedureParams(resource: SoldProduct): any[] {
    return [resource._idProduct, resource._idSaleInvoice, resource.quantity];
  }
}

export default new SoldProductController();
