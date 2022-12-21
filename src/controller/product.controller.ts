import { Product } from "../model/entities";
import Dao from "../dao/Dao";

class ProductController extends Dao<Product> {
  constructor() {
    super(
      "createProduct(?, ?, ?)",
      "updateProduct(?, ?, ?, ?)",
      "deleteProduct(?)",
      "getProduct(?)",
      "getAllProducts()"
    );
  }

  procedureParams(resource: Product): any[] {
    return [resource.name, resource.price, resource._idCategory];
  }
}

export default new ProductController();
