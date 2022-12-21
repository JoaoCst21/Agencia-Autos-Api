import { Category } from "../model/entities";
import Dao from "../dao/Dao";

class CategoryController extends Dao<Category> {
  constructor() {
    super(
      "createCategory(?)",
      "updateCategory(?,?)",
      "deleteCategory(?)",
      "getCategory(?)",
      "getAllCategories()"
    );
  }

  procedureParams(resource: Category): any[] {
    return [resource.name];
  }
}

export default new CategoryController();
