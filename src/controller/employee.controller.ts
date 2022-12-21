import Dao from "../dao/Dao";
import { Employee } from "../model/entities";

class EmployeeController extends Dao<Employee> {
  constructor() {
    super(
      "createEmployee(?, ?, ?, ?, ?)",
      "updateEmployee(?, ?, ?, ?, ?, ?)",
      "deleteEmployee(?)",
      "getEmployee(?)",
      "getAllEmployees()"
    );
  }

  procedureParams(resource: Employee): any[] {
    return [
      resource.name,
      resource.lastName,
      resource.salary,
      resource.phone,
      resource._idCashRegister,
    ];
  }
}

export default new EmployeeController();
