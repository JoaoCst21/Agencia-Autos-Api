import Dao from "../dao/Dao";
import { Client } from "../model/entities";

class ClientController extends Dao<Client> {
  constructor() {
    super(
      "createClient(?, ?, ?)",
      "createClient(?, ?, ?, ?)",
      "deleteClient(?)",
      "getClient(?)",
      "getAllClients()"
    );
  }

  procedureParams(resource: Client): any[] {
    return [resource.name, resource.lastName, resource.address];
  }
}

export default new ClientController();
