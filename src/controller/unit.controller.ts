import Dao from "../dao/Dao";
import { Unit } from "../model/entities";

class UnitController extends Dao<Unit> {
  constructor() {
    super(
      "createUnit(?)",
      "updateUnit(?, ?)",
      "deleteUnit(?)",
      "getUnit(?)",
      "getAllUnits()"
    );
  }

  procedureParams(resource: Unit): any[] {
    return [resource._idProduct];
  }
}

export default new UnitController();
