import Dao from "../dao/Dao";
import { SaleInvoice } from "../model/entities";

class SaleInvoiceController extends Dao<SaleInvoice> {
  constructor() {
    super(
      "createSaleInvoice(?, ?, ?, ?, ?, ?)",
      "updateSaleInvoice(?, ?, ?, ?, ?, ?, ?)",
      "deleteSaleInvoice(?)",
      "getSaleInvoice(?)",
      "getAllSaleInvoices()"
    );
  }

  procedureParams(resource: SaleInvoice): any[] {
    return [
      resource.NIT,
      resource._idEmployee,
      resource._idCashRegister,
      resource.emissionDate,
      resource.expirationDate,
      resource.total,
    ];
  }
}

export default new SaleInvoiceController();
