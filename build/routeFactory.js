"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.routeFactory = void 0;
var express_1 = require("express");
var routeFactory = function (controller) {
    var router = (0, express_1.Router)();
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
exports.routeFactory = routeFactory;
//# sourceMappingURL=routeFactory.js.map