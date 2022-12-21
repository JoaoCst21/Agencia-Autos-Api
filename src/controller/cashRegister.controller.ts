import Dao from "../dao/Dao";
import { CashRegister } from "../model/entities";

class CashRegisterController extends Dao<CashRegister> {
  constructor() {
    super(
      "createCashRegister(?)",
      "updateCashRegister(?,?)",
      "deleteCashRegister(?)",
      "getCashRegister(?)",
      "getAllCashRegister()"
    );
  }

  procedureParams(resource: CashRegister): any[] {
    return [resource.cashRegisterType];
  }
}

export default new CashRegisterController();
