"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var Dao_1 = require("../dao/Dao");
var PurchasedProductController = /** @class */ (function (_super) {
    __extends(PurchasedProductController, _super);
    function PurchasedProductController() {
        return _super.call(this, "createPurchasedProduct(?, ?, ?)", "updatePurchasedProduct(?, ?, ?, ?)", "delePurchasedProduct(?)", "getPurchasedProduct(?)", "getAllPurchasedProducts()") || this;
    }
    PurchasedProductController.prototype.procedureParams = function (resource) {
        return [resource._idProduct, resource._idSaleInvoice, resource._idUnit];
    };
    return PurchasedProductController;
}(Dao_1.default));
exports.default = new PurchasedProductController();
//# sourceMappingURL=purchasedProduct.controller.js.map