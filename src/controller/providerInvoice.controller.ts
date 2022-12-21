import { ProviderInvoice } from "../model/entities";
import Dao from "../dao/Dao";

class ProviderInvoiceController extends Dao<ProviderInvoice> {
  constructor() {
    super(
      "createProviderInvoice(?, ?, ?, ?)",
      "updateProviderInvoice(?, ?, ?, ?, ?)",
      "deleteProviderInvoice(?)",
      "getProviderInvoice(?)",
      "getAllProviderInvoices()"
    );
  }

  procedureParams(resource: ProviderInvoice): any[] {
    return [
      resource._idProvider,
      resource.emissionDate,
      resource.expirationDate,
      resource.total,
    ];
  }
}

export default new ProviderInvoiceController();
