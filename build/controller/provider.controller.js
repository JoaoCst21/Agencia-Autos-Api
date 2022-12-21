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
var ProviderController = /** @class */ (function (_super) {
    __extends(ProviderController, _super);
    function ProviderController() {
        return _super.call(this, "createProvider(?, ?, ?)", "updateProvider(?, ?, ?, ?)", "deleteProvider(?)", "getProvider(?)", "getAllProviders()") || this;
    }
    ProviderController.prototype.procedureParams = function (resource) {
        return [resource.name, resource.address, resource.phone];
    };
    return ProviderController;
}(Dao_1.default));
exports.default = new ProviderController();
//# sourceMappingURL=provider.controller.js.map