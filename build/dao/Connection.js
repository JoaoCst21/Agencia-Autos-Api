"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.connection = void 0;
var promise_1 = require("mysql2/promise");
exports.connection = (0, promise_1.createPool)({
    host: "localhost",
    user: "root",
    password: "root",
    database: "walmart",
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
});
//# sourceMappingURL=Connection.js.map