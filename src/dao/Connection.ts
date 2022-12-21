import { createPool } from "mysql2/promise";

export const connection = createPool({
  host: "localhost",
  user: "root",
  password: "root",
  database: "walmart",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});
