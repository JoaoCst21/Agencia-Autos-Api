import Dao from "./dao/Dao";
import { Router } from "express";

export const routeFactory = (controller: Dao<unknown>) => {
  const router = Router();

  router
    .route("/")
    .get(controller.readAll.bind(controller))
    .post(controller.create.bind(controller));

  router
    .route("/:id")
    .get(controller.read.bind(controller))
    .put(controller.update.bind(controller))
    .delete(controller.delete.bind(controller));

  return router;
};
