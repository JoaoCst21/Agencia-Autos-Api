import Dao from "../dao/Dao";
import { Request } from "../dao/Dao";
import { Response } from "express";
import { Client } from "../model/entities";
import { connection } from "../dao/Connection";

class ClientController extends Dao<Client> {
  constructor() {
    super(
      "createClient(?, ?, ?, ?)",
      "createClient(?, ?, ?, ?)",
      "deleteClient(?)",
      "getClient(?)",
      "getAllClients()"
    );
  }

  @Override
  async update(req: Request<Client>, res: Response): Promise<void> {
    try {
      const { id } = req.params;
      const body: Client = req.body;
      await connection.execute(`CALL ${this.updateMethod}`, [
        id,
        ...this.procedureParamsUpdate(body),
      ]);
      res.status(200).json(body);
    } catch (e) {
      console.error(e);
      res.status(500).json(e);
    }
  }

  procedureParams(resource: Client): any[] {
    return [resource.NIT, resource.name, resource.lastName, resource.address];
  }

  procedureParamsUpdate(resource: Client): any[] {
    return [resource.name, resource.lastName, resource.address];
  }
}

export default new ClientController();
