import Dao from "../dao/Dao";
import { Provider } from "../model/entities";

class ProviderController extends Dao<Provider> {
  constructor() {
    super(
      "createProvider(?, ?, ?)",
      "updateProvider(?, ?, ?, ?)",
      "deleteProvider(?)",
      "getProvider(?)",
      "getAllProviders()"
    );
  }

  procedureParams(resource: Provider): any[] {
    return [resource.name, resource.address, resource.phone];
  }
}

export default new ProviderController();
